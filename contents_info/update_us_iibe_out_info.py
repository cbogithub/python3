#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import argparse
import configparser
import cplib
import datetime
import json
import os
import re
import sys

region = 'us'
jumpHost = "qdesktop-dqi2.quixeyplex.com"
#jumpHost = "127.0.0.1"

appname_exclude_list = [
    "stubhub.com",
    "viewster.com"
]


def main():
    # parse arguments
    parser = argparse.ArgumentParser()

    parser.add_argument('-i', '--input', required=True,
                        help='project/training point file exported from RADS in UTF-8 format')
    parser.add_argument('-o', '--output', required=True,
                        help='output file in utf-8 format')
    parser.add_argument('-d', '--debug', action="store_true", required=False,
                        help="enable debugging")
    args = parser.parse_args()

    inputFile = args.input
    outputFile = args.output
    if (args.debug):
        debug = True
    else:
        debug = False

    # read config file
    config = configparser.RawConfigParser()
    config.read('config.cfg')
    env_list = config.get('common', 'us-envs').split(',')
    if (len(env_list) <= 0):
        print("mal-formatting at config file: common -> us-envs")
        exit(1)

    print("reading previous iibe out from " + inputFile)
    with open(inputFile) as json_file:
        cp_info = json.load(json_file)

    for env in env_list:
        env = env.strip()
        print("\n-----" + env + "-----")
        iibe_out_s3_key = config.get(env, 'iibe_out_s3_key')  # s3://quixey-stage/v4Content/us-direct/iibe/
        iibe_key = config.get(env, 'iibe_output_key')
        print("reading current " + env + " content info from " + iibe_out_s3_key)

        try:
            cp_search_cmd = 's3cmd ls ' + iibe_out_s3_key + ' 2>/dev/null | sed "/0   s3:\/\/quixey-/d" | sed \'s/DIR   //g\' | xargs -I{} sh -c \'s3cmd ls {} | grep "s3:.*" | sed "/0  s3:\/\/quixey-/d" | sed "s/DIR   //g"\' | xargs -I{} sh -c \'s3cmd ls {} | grep "s3:.*" | sed "/0   s3:\/\/quixey-/d" | sed "s/DIR   //g"\''
            if debug:
                print(cp_search_cmd)
            content_list = cplib.readIIBEOutCmd(cp_search_cmd)
        except:
            print("something wrong during reading IIBE out. quitting...")
            sys.exit(1)

        print("read " + str(len(content_list)) + " records.")
        cur_content = cplib.parseS3IIBEOutput(content_list, appname_exclude_list)

        date = datetime.datetime.today().strftime('%Y%m%d')
        shell_filename = "us_" + env + "_" + date + ".sh"

        with open(shell_filename, "w") as shell_file:
            shell_file.write("#!/bin/bash\n")
            for appName in cur_content:
                if appName in cp_info[env]:
                    for sFun in cur_content[appName]:
                        if sFun in cp_info[env][appName]:
                            if debug:
                                print(appName + "/" + sFun + ": " + cp_info[env][appName][sFun]["timestamp"] + " ? " + cur_content[appName][sFun])
                            if cp_info[env][appName][sFun]["timestamp"] != cur_content[appName][sFun]:
                                print("New IIBE out is found at " + appName + " - " + sFun)
                                dl_folder = cp_info[env][appName][sFun]["download_folder"]
                                shell_file.write("mkdir " + dl_folder + "\n")
                                shell_file.write("cd " + dl_folder + "\n")
                                shell_file.write("s3cmd sync " + cplib.getCpOutS3Bucket(
                                    iibe_out_s3_key, iibe_key, appName, sFun,
                                    cur_content[appName][sFun]) + " ./\n")
                                shell_file.write("cat part-* > part\n")
                                shell_file.write("rm _*\n")
                                shell_file.write("rm part-*\n")
                                shell_file.write("ls -lh\n")
                                shell_file.write("cd ..\n")
                                shell_file.write("#\n")
                                cp_info[env][appName][sFun]["timestamp"] = cur_content[appName][sFun]
                        else:
                            print("*** " + appName + "/" + sFun + " is new")
                else:
                    print("***** " + appName + " is new")
            shell_file.write("wc -l */part\n")
        os.system("chmod 775 " + shell_filename)

    print("\n-----")
    print("new iibe out is updated to " + outputFile)
    cplib.writeToJson(outputFile, cp_info)


if __name__ == "__main__":
    # require python 3
    if sys.version_info[0] != 3:
        print("This script requires Python 3")
        exit()

    main()
