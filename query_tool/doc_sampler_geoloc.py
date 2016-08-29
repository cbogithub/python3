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

#contents_src_prefix = "/media/stage-v4iibe/"
contents_src_prefix = "/Users/dqi/data/stage-iibe-out/"
contents_src_postfix = "*/part"
p = "/part:({.*})$"
sampler_count = 3


def randomIt(input):
    symbol = random.randint(0, 1)
    # replace var for more randomness
    var = random.random() / 10
    if symbol == 1:
        return input + var
    return input - var


def searchSamples(keywords, vertical, debug):
    cmd = "grep \"" + keywords + "\" " + contents_src_prefix + vertical + contents_src_postfix
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
            sUrl = d["sUrl"]
            appName = d["appName"]
            sGeoLocation = d["sGeoLocation"]
            if len(sGeoLocation) == 0:
                latitude = 0
                lontitude = 0

            for geoloc in sGeoLocation:
                latitude = float(geoloc["lat"])
                lontitude = float(geoloc["lon"])
                break

            if (latitude > 20) and (latitude < 88) and (lontitude < -50) and (lontitude > -150):
                doc = {}
                doc["appName"] = appName
                doc["sTitle"] = sTitle
                doc["sUrl"] = sUrl
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
    parser.add_argument('-d', '--debug', action="store_true", required=False,
                        help="enable debugging")

    args = parser.parse_args()

    inputFile = args.input
    outputFile = args.output
    if (args.debug):
        debug = True
    else:
        debug = False

    terms = qslib.load_rows_csv_file(inputFile)
    print("read " + str(len(terms)) + " patterns from " + inputFile + ".")

    rows = []
    for term in terms:
        words = term.split(',')
        pattern = words[0]
        vertical = words[1]
        if debug:
            print(pattern + "," + vertical)

        results = searchSamples(pattern, vertical, debug)
        if len(results) == 0:
            print(pattern + " of " + vertical + " return no results.")
        for result in results:
            row = "\"" + pattern + "\"," + "{0:.7f}".format(result["lat"]) + "," + "{0:.7f}".format(result["lon"]) \
                  + "," + result["appName"] + ",\"" + result["sTitle"] + "\"," + result["sUrl"]
            rows.append(row)

    qslib.write_rows_csv_file(outputFile, rows)
    print("write " + str(len(rows)) + " doc samples to " + outputFile + ".")


if __name__ == "__main__":
    # require python 3
    if sys.version_info[0] != 3:
        print("This script requires Python 3")
        exit()

    main()
