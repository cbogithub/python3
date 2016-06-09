#!/usr/bin/python
# -*- coding: utf-8 -*-

import argparse
import qslib
import random


# shuffle rows of a csv file
def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('-i', '--input', required=True,
                        help='input csv file"')
    parser.add_argument('-o', '--output', required=True,
                        help='output csv file in utf-8 format')
    parser.add_argument('-n', '--noshuffle', action="store_true", required=False,
                        help="no shuffle. just return results")

    args = parser.parse_args()

    query_list = qslib.load_rows_csv_file(args.in_csv_file)
    print("read " + str(len(query_list)) + " records from " + args.in_csv_file + ".")
    if not args.noshuffle:
        random.shuffle(query_list)
    qslib.write_rows_csv_file(args.out_csv_file, query_list)


if __name__ == "__main__":
    # require python 3
    if sys.version_info[0] != 3:
        print("This script requires Python 3")
        exit()

    main()
