#!/bin/bash
LOAD=80
MEM_L=`free -t | awk 'FNR == 2 {print int($3/$2*100)}'`
MEM_LOAD=`echo "Current Memory Utilization is: "${MEM_L} "%"`
echo $MEM_LOAD
if [ $MEM_L -gt $LOAD ]; then
	/usr/local/bin/gotify-cli push -t "Excess Memory Usage" $MEM_LOAD
fi

