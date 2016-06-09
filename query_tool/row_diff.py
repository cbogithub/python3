#!/usr/bin/python
# -*- coding: utf-8 -*-

import argparse
import qslib
import random
import sys


# Find the diff of two files
# Wrote diff inside first file, with the same order
def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('-i1', '--input1', required=True,
                        help='input csv file 1 in utf-8 format"')
    parser.add_argument('-i2', '--input2', required=True,
                        help='input csv file 2 in utf-8 format"')
    parser.add_argument('-o', '--output', required=True,
                        help='output csv file in utf-8 format')
    parser.add_argument('-s', '--shuffle', action="store_true", required=False,
                        help="shuffle return results")

    args = parser.parse_args()

    query_list1 = qslib.load_rows_csv_file(args.input1)
    print("read " + str(len(query_list1)) + " records from " + args.input1 + ".")
    query_list2 = qslib.load_rows_csv_file(args.input2)
    print("read " + str(len(query_list2)) + " records from " + args.input2 + ".")

    query_set = set(query_list1) - set(query_list2)
    print("first query set has " + str(len(query_set)) + " entries left")

    query_list3 = []
    for query in query_list1:
        if query in query_set:
            query_list3.append(query)

    if args.shuffle:
        random.shuffle(query_list3)

    qslib.write_rows_csv_file(args.output, query_list3)


if __name__ == "__main__":
    # require python 3
    if sys.version_info[0] != 3:
        print("This script requires Python 3")
        exit()

    main()
