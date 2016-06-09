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
jumpHost = "qdesktop-dqi.quixeyplex.com"
# cp_search_cmd = 's3cmd ls s3://quixey-stage/v4Content/us-direct/iibe/ 2>/dev/null | sed "/0   s3:\/\/quixey-/d" | sed \'s/DIR   //g\' | xargs -I{} sh -c \'s3cmd ls {} | grep "s3:.*" | sed "/0   s3:\/\/quixey-/d" | sed "s/DIR   //g"\' | xargs -I{} sh -c \'s3cmd ls {} | grep "s3:.*" | sed "/0   s3:\/\/quixey-/d" | sed "s/DIR   //g"\''


appname_exclude_list = [
    "neihanshequ",
    "full"
]


def main():
    # parse arguments
    parser = argparse.ArgumentParser()

    parser.add_argument('-i', '--input', required=True,
                        help='project/training point file exported from RADS in UTF-8 format')
    parser.add_argument('-o', '--output', required=False,
                        help='output file in utf-8 format')
    parser.add_argument('-d', '--debug', action="store_true", required=False,
                        help="enable debugging")
    args = parser.parse_args()

    inputFile = args.input
    if (args.output):
        outputFile = args.output
    else:
        outputFile = inputFile
    if (args.debug):
        debug = True
    else:
        debug = False

    # read config file
    config = configparser.RawConfigParser()
    config.read('config.cfg')
    env_list = config.get('common', 'us-envs').split(',')

    print("reading previous doc count info from " + inputFile)
    with open(inputFile) as json_file:
        cp_info = json.load(json_file)

    for env in env_list:
        print("\n-----"+env+"-----")
        print("reading current " + env + " index info from iibe cluster")
        cluster_host =  config.get(env, 'iibe_cluster') # http://es-i-ab757619.cluster-iibe-stage-1418199169.stage.quixey.com:9200
        index_name = config.get(env, 'index_name') # /v5docmodel_trelleborg/v5
        try:
            index_info_cmd = "curl -XPOST '" + cluster_host + index_name + """/_search?pretty' -d '
                {
                  "size": 0,
                  "aggs": {
                    "group_by_function": {
                      "terms": {
                       "field": "sFunction",
                           "size" : 200
                      }
                    }
                  }
                }'
            """
            if debug:
                print(index_info_cmd)
            #content_list = cplib.readHostCmd(jumpHost, index_info_cmd)
            content_list = cplib.readCmdOutput(index_info_cmd)
        except:
            print("something wrong during reading indexing info. quitting...")
            sys.exit(1)

        if debug:
            print(content_list)

        cur_doc_count = cplib.parseIndexInfo(content_list)
        if debug:
            print(cur_doc_count)

        for appName in cur_doc_count:
            if appName in cp_info[env]:
                for sFun in cur_doc_count[appName]:
                    if sFun in cp_info[env][appName]:
                        if cp_info[env][appName][sFun]["doc_count"] != cur_doc_count[appName][sFun]:
                            print(appName + "/" + sFun + " doc_count changed from " + str(
                                cp_info[env][appName][sFun]["doc_count"]) + " to " + str(cur_doc_count[appName][sFun]))
                            cp_info[env][appName][sFun]["doc_count"] = cur_doc_count[appName][sFun]
                    else:
                        print("** New sFun " + sFun + " is found inside app " + appName)
            else:
                print("*** New app " + appName + " is found")

        print("")
        for appName in cp_info[env]:
            if appName in cur_doc_count:
                for sFun in cp_info[env][appName]:
                    if sFun not in cur_doc_count[appName]:
                        print("!!! " + appName + "/" + sFun + " is not in " + env + " index")
            else:
                print("!!!!! " + appName + " is not in " + env + " index")

    print("\n-----")
    print("Update current doc count to " + outputFile)
    cplib.writeToJson(outputFile, cp_info)


if __name__ == "__main__":
    # require python 3
    if sys.version_info[0] != 3:
        print("This script requires Python 3")
        exit()

    main()
