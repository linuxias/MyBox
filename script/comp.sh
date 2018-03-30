#!/bin/bash

FILE1=${1}
FILE2=${2}

TMP1="TMP1.txt"
TMP2="TMP2.txt"

sort ${FILE1} > ${TMP1}
sort ${FILE2} > ${TMP2}

VAR=$(diff -U 0 ${TMP1} ${TMP2} | grep -v ^@ | wc -l)
RESULT=`expr ${VAR} - 2`
echo "Result : ${RESULT}"

rm ${TMP1}
rm ${TMP2}
