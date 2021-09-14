#!/bin/bash

netprefix=$1
porttcp=$2
echo "ip,port"
for ip in $(seq 1 255); do
	timeout .1 bash -c "echo >/dev/tcp/$netprefix.$ip/$porttcp" 2>/dev/null &&
		echo "$netprefix.$ip,$porttcp"
done
