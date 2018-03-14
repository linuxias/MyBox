#!/bin/bash
IP="127.0.0.1"
first_port=$1
last_port=$2

function usage() {
	echo "Script for scanning port"
	echo "Usage   : ./portscan your_ip start_port end_port"
	echo "Example : ./portscan 127.0.0.1 1 100"
	exit
}

if [ $# -ne 2 ]
then
	usage
fi

for port in `seq $first_port $last_port`
do
	(echo >/dev/tcp/$IP/$port)> /dev/null 2>&1 && echo $port open || echo "$port closed"
done
