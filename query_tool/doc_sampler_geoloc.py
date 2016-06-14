#!/usr/bin/python
# -*- coding: utf-8 -*-

import argparse
import json
import qslib
import random
import re
import subprocess
import sys

# get sampler data from contents

contents_src = "/media/stage-v4iibe/event*/part"
p = "/part:({.*})$"
sampler_count = 3


def randomIt(input):
    symbol = random.randint(0, 1)
    var = random.random() / 100
    if symbol == 1:
        return input + var
    return input - var


def searchSamples(keywords, debug):
    cmd = "grep \"" + "Yoga Class" + "\" " + contents_src
    if debug:
        print("cmd: " + cmd)
    candidates = []
    out = qslib.readCommandOutput(cmd)

    if len(out) == 0:
        return candidates

    for line in out:
        m = re.search(p, line)
        if m:
            d = json.loads(m.group(1))
            sTitle = d["sTitle"]
            appName = d["appName"]
            sGeoLocation = d["sGeoLocation"]

            for geoloc in sGeoLocation:
                latitude = float(geoloc["lat"])
                lontitude = float(geoloc["lon"])
                break

            if (latitude > 20) and (latitude < 88) and (lontitude < -50) and (lontitude > -150):
                doc = {}
                doc["appName"] = appName
                doc["sTitle"] = sTitle
                doc["lat"] = randomIt(latitude)
                doc["lon"] = randomIt(lontitude)
                candidates.append(doc)

    random.shuffle(candidates)

    if len(candidates) < sampler_count:
        return candidates[:len(candidates)]

    return candidates[:sampler_count]


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('-i', '--input', required=True,
                        help='input csv file"')
    parser.add_argument('-o', '--output', required=True,
                        help='output csv file in utf-8 format')

    args = parser.parse_args()

    rows = []
    keywords = "Yoga Class"
    results = searchSamples(keywords, False)
    for result in results:
        row = keywords + "," + str(result["lat"]) + "," + str(result["lon"]) + "," + result["appName"] + "," + result["sTitle"]
        rows.append(row)

    qslib.write_rows_csv_file(args.output, rows)


if __name__ == "__main__":
    # require python 3
    if sys.version_info[0] != 3:
        print("This script requires Python 3")
        exit()

    main()
