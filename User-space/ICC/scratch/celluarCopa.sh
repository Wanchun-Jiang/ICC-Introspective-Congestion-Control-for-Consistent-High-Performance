#!/bin/bash
#list="taxi bus home timessquare"
list="taxi"
for scene in $list
do
	mm-delay 10 mm-link celluar_trace/trace_"$scene" 48mbps_data.trace --uplink-log="uplinkLog/celluar/Copa"$scene".log" --downlink-log="downlinkLog/celluar/Copa"$scene".log" --uplink-queue=droptail --uplink-queue-args="packets=100" <<EOF
	./send_parallel_Copa.sh 10 "scratch/uplinkLog/Copa_"$scene"_.log"
EOF

done
