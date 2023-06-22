#!/usr/local/bin/python
# -*- coding: utf-8 -*-

import sys
import json
import math

keyindex = 0
keyindex2 = None
subsetvadem = False
separador = '\t'
trim = '\n\t'

text = False
filter = False
select = False
convert = False



if len(sys.argv) == 2:
    dictionary = sys.argv[1]
elif len(sys.argv) >= 3:
    dictionary = sys.argv[1]

    if sys.argv[2] == 'text':
        text = True
    elif sys.argv[2] == 'tfilter':
        text = True
        filter = True
    elif sys.argv[2] == 'tselect':
        text = True
        select = True
    elif sys.argv[2] == 'tconvert':
        text = True
        convert = True

    if len(sys.argv) >= 4:
        if sys.argv[3] != 'tab':
            separador = ';'
            trim = '"\n\t'

        if len(sys.argv) >= 5:
            keyindex = int(sys.argv[4])
            if len(sys.argv) == 6:
                keyindex2 = int(sys.argv[5])
else:
    print("USAGE: python enrich.py [dictionary] [num|text|tsubsetvadem|tfilter|tselect|tconvert] [tab|semicolon] [keyindex] [keyindex2]")
    print("       dictionary format --> [data, key]")


dict = {}

if (filter or select) or convert:
    with open(dictionary, "r") as dictfile:
        for line in dictfile:
            data = line.split(separador)
            key = data[0].strip(trim)
            dict[key] = True
else:
    with open(dictionary, "r") as dictfile:
        for line in dictfile:
            data = line.split(separador)
            key = data[1].strip(trim)
            if text:
                dict[key] = data[0]
            else:
                count = data[0].strip(trim)
                dict[key] = float(count)
#print(dict)

for line in sys.stdin:
    data = line.split(separador)
    key = data[keyindex].strip(trim)
    #print(key, dict)
    try:
        if convert:
            for prep in dict:
                prep = prep + " "
                if key.startswith(prep):
                    key = key[len(prep):]
                    data[keyindex] = key
                    break
        else:
            value = dict[key]
            if select:
                print(line.strip("\n"))
    except KeyError:
        if filter:
            print(line.strip("\n"))
        elif not select:
            if text:
                if separador == ";":
                    value = "\" \""
                else:
                    value = " "
            else:
                value = "0"
    finally:
        if text and not (keyindex2 is None):
            key = data[keyindex2].strip(trim)
            value2 = dict.get(key, None)
            if not (value2 is None):
                if value[-1] == ']':
                    value = value[:-1] + ', ' + value2[1:]
                else:
                    value = value2

        if convert:
            print(data[0] + ";" + data[1] + ";" + data[2] + ";" + data[3] + ";" + data[4] + ";" + data[5] + ";" + data[6] + ";" + data[7] + ";" + data[8] + ";" + data[9].strip("\n"))
        else:
            if not filter and not select:
                if text:
                    print(line.strip("\n") + separador + value)
                else:
                    print(line.strip("\n") + separador + str(round(float(value))))

