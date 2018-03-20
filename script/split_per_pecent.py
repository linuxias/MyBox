#!/usr/bin/python

import sys
import os
import subprocess

splitsize = sys.argv[1]
filepath = os.getcwd()
filename = filepath + "/" +sys.argv[2]

if not os.path.isfile(filename):
    print("Wrong file path : " + filename)
    sys.exit(0)
if not splitsize.isdigit() or splitsize <= 0:
    print("Wrong file size : " + splitname)
    sys.exit(0)

#cmd = "split -l $[ $(wc -l " + filename +"|cut -d\" \" -f1) * " + splitsize + " / 100] " + filename
cmd = "csplit " + filename + " $(( $(wc -l < " + filename +") * " + splitsize + " / 100 +1))"
subprocess.call(cmd, shell=True)
