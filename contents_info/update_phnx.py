#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import argparse
import cplib
import datetime
import json
import os
import re
import sys

jumpHost = "jump.quixey.be"
cp_search_cmd = 'osscmd ls --delimiter=/ oss://quixey-cp-stage/v4content/stage03/iibe/ 2>/dev/null | grep "^v4content" | xargs -I{} sh -c \'osscmd ls --delimiter=/ oss://quixey-cp-stage/{} 2>/dev/null | grep "^v4content"\' | xargs -I{} sh -c \'osscmd ls --delimiter=/ oss://quixey-cp-stage/{} 2>/dev/null | grep "^v4"\''

appname_black_list = [
    "neihanshequ"
]


def createYunOSBucketScript(cluster, appName, sFun, timeStamp):
    prefix = "oss://quixey-cp-stage/v4content/" + cluster + "/iibe/"
    postfix = "iibe/"
    return prefix + appName + "/" + sFun + "/" + timeStamp + "/" + postfix


def main():
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

    print("reading past cp info from " + inputFile)

    print("reading current cp info from jump server")
    try:
        content_list = cplib.readHostCmd(jumpHost, cp_search_cmd)
    except:
        print("something wrong during reading from jump server. quitting...")
        sys.exit(1)

    print("read " + str(len(content_list)) + " records.")
    with open(inputFile) as json_file:
        cp_info = json.load(json_file)

    cur_content = cplib.parseYunOSContentList(content_list, appname_black_list)

    date = datetime.datetime.today().strftime('%Y%m%d')
    shell_filename = "phnx_" + date + ".sh"

    with open(shell_filename, "w") as shell_file:
        shell_file.write("#!/bin/bash\n")
        for appName in cur_content:
            if appName in cp_info:
                for sFun in cur_content[appName]:
                    if sFun in cp_info[appName]:
                        if cp_info[appName][sFun]["timestamp"] != cur_content[appName][sFun]:
                            print ("# New contents found at " + appName + " - " + sFun)
                            dl_folder = cp_info[appName][sFun]["download_folder"]
                            shell_file.write("mkdir " + dl_folder + "\n")
                            shell_file.write("cd " + dl_folder + "\n")
                            shell_file.write("osscmd downloadtodir " + createBucketScript("stage03", appName, sFun,
                                                                                          cur_content[appName][
                                                                                              sFun]) + " .\n")
                            shell_file.write("cat part-* > part\n")
                            shell_file.write("rm _*\n")
                            shell_file.write("rm part-*\n")
                            shell_file.write("ls -lh\n")
                            shell_file.write("cd ..\n")
                            shell_file.write("#\n")
                            cp_info[appName][sFun]["timestamp"] = cur_content[appName][sFun]
                    else:
                        print ("** New sFun " + sFun + " is found inside app " + appName)
            else:
                print ("*** New app " + appName + " is found")
        shell_file.write("wc -l */part\n")
    os.system("chmod 775 " + shell_filename)

    print("write to " + outputFile)
    cplib.writeToJson(outputFile, cp_info)


if __name__ == "__main__":
    # require python 3
    if sys.version_info[0] != 3:
        print("This script requires Python 3")
        exit()

    main()
