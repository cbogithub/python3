import io
import json
import os
import re
import sys
import subprocess


def readHostCmd(host, cmd):
    ssh = subprocess.Popen(["ssh", "%s" % host, cmd],
                           shell=False,
                           stdout=subprocess.PIPE,
                           stderr=subprocess.PIPE)

    response = ssh.stdout.readlines()
    if (response == []):
        error = ssh.stderr.readlines()
        print (sys.stderr, "ERROR: %s" % error)
        return

    return response


def readIIBEOutCmd(cmd):
    #response = os.system(cmd)
    #response = os.popen(cmd).read()
    response = subprocess.check_output(cmd, shell=True)
    #print(response)
    if (len(response) <= 0):
        print (sys.stderr)
        return

    lines = response.splitlines()
    rslt = []
    for line in lines:
        s = line.strip().decode('utf-8')
        if (len(s) > 0 and s.startswith('s3')):
            rslt.append(s)

    return rslt

def readCmdOutput(cmd):
    #print(cmd)
    response = subprocess.check_output(cmd, shell=True)
    if (len(response) <= 0):
        print (sys.stderr)
        return

    #print(response)
    return response

def read_config_file(file_name, debug=False):
    with open(file_name, newline='', encoding='utf-8') as ifile:
        data = json.load(ifile)

    return data


def writeToJson(filename, object):
    with io.open(filename, 'w', encoding='utf8') as json_file:
        data = json.dumps(object, indent=2, ensure_ascii=False)
        try:
            json_file.write(data)
        except TypeError:
            json_file.write(data.decode())


def parseS3IIBEOutput(bucket_list, appname_black_list):
    rslt = {}

    for bucket in bucket_list:
        #line = bucket.decode()
        line = bucket
        m = re.search('.*iibe\/(.*)\/(.*)\/(.*)\/', line)
        if (m):
            appName = m.group(1)
            sFun = m.group(2)
            timeStamp = m.group(3)

            if appName not in appname_black_list:
                if appName not in rslt:
                    rslt[appName] = {}

                rslt[appName][sFun] = timeStamp

    return rslt

def parseIndexInfo(raw_index_info):
    rslt = {}
    #print(len(raw_index_info))

    #raw_data = ""
    #for line in raw_index_info:
    #    raw_data += line.decode("utf-8")
    #json_data = json.loads(raw_data)
    json_data = json.loads(raw_index_info.decode("utf-8"))
    for item in json_data["aggregations"]["group_by_function"]["buckets"]:
        # func://youtube.com/watchVideo
        func = item["key"]
        m = re.search('func://(.*)/(.*)', func)
        if (m):
            appName = m.group(1)
            sFun = m.group(2)
            #print(appName + "/" + sFun + ":" + str(item["doc_count"]))
            if appName not in rslt:
                rslt[appName] = {}
            rslt[appName][sFun] = item["doc_count"]
    return rslt

def getCpOutS3Bucket(s3_key, iibe_key, appName, sFun, timeStamp):
    return s3_key + appName + "/" + sFun + "/" + timeStamp + "/" + iibe_key