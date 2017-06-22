#!/bin/bash

OUTPUT_FILE_DIR=
OUTPUT_FILE=$OUTPUT_FILE_DIR/speeds.csv
TWEET_TOOL=change_this_to_tweet_tool.sh path

#duration="0"
if [ $1 = "start" ]; then

	#while [ $duration -lt 5 ]; do
	while true; do
		speedtest-cli --csv --secure --no-pre-allocate --bytes >> $OUTPUT_FILE
		$TWEET_TOOL
		sleep 3600
#let duration=duration+1
	done
fi

if [ $1 = "stop" ]; then
	kill $(ps aux | grep 'test_speeds.sh' | awk '{print $2}')
	exit;
fi	
