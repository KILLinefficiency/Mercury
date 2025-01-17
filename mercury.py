#!/usr/bin/env python3

import sys
import csv
import subprocess

import temp

if len(sys.argv) == 1:
    print("Enter the name of CSV file as argument.")
    exit()

f = open(sys.argv[1], "r")

data = list(csv.reader(f));

size = len(data)

for each in range(1, size):
    print(f"\n[{each} / {size - 1}]")
    # generate template
    data[each][0] = data[each][0].title()
    data[each][2] = data[each][2][0:3]
    data[each][3] = data[each][3].title()
    data[each][4] = data[each][4].title()
    data[each][5] = data[each][5].title()
    temp.make(data[each])

    # generate certificate
    subprocess.call(["typst", "compile", "Certificate.typ", "Certificate.pdf"])
    print(f"Generated Certificate for {data[each][0]}")
    
    # send certificate
    subprocess.call(["node", "--no-deprecation", "index.js", data[each][0], data[each][1]])

f.close()
print("\nDONE\n")
