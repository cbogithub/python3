#!/usr/bin/python
# -*- coding: utf-8 -*-

import argparse
import csv
import random


# load log file
# input format
# <token1> <token2> ... <tokenn> <doc_freq>
def load_log_file(file_name):
    data = []
    with open(file_name, newline='', encoding='utf-8') as ifile:
        lines = ifile.readlines()
        for row in lines:
            tokens = row.split()
            tlen = len(tokens)
            if tlen < 1:
                continue
            if tokens[0].startswith('#'):
                continue
            cur = {}
            query_list = tokens[:-1]
            cur['query'] = ' '.join(query_list)
            cur['freq'] = tokens[tlen - 1]
            cur['logtitude'] = ''
            cur['altitude'] = ''
            data.append(cur)
    return data


# write csv file
def write_csv_file(file_name, rows):
    with open(file_name, 'w', encoding='utf-8') as ofile:
        ofile.write("FREQ,QUERY,LATITUDE,LONGITUDE,COMMENTS\n")
        # writer = csv.writer(ofile)
        # writer.writerows(queries)
        for row in rows:
            ofile.write(row['freq'] + ",\"" + row['query'] + "\",,,\n")


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('-i', '--input', required=True, help="input log file")
    parser.add_argument('-o', '--output', required=True, help="output csv file")
    args = parser.parse_args()

    data = load_log_file(args.input)

    # for d in data:
    #     print(d['query']+" "+str(d['freq']))

    write_csv_file(args.output, data)


if __name__ == "__main__":
    main()
