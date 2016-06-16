import csv
import io
import json
import os
import re
import sys
import subprocess

# load csv file
def load_rows_csv_file(file_name):
    rows = []
    with open(file_name, newline='', encoding='utf-8') as ifile:
        reader = csv.reader(ifile)
        for row in reader:
            num_cols = len(row)
            if num_cols < 1:
                continue
            if row[0].startswith('#'):
                continue
            rows.append(",".join(row))
    return rows


# write csv file
def write_rows_csv_file(file_name, rows):
    # with open(file_name, 'wb', newline='', encoding='utf-8') as ofile:
    with open(file_name, 'w', encoding='utf-8') as ofile:
        # writer = csv.writer(ofile)
        # writer.writerows(queries)
        for row in rows:
            ofile.write(row + "\n")


# read command output
def readCommandOutput(cmd):
    response = subprocess.check_output(cmd, shell=True)
    if (len(response) <= 0):
        print (sys.stderr)
        return

    lines = response.splitlines()
    rslt = []
    for line in lines:
        s = line.strip().decode('utf-8')
        rslt.append(s)

    return rslt