{\rtf1\ansi\ansicpg1252\cocoartf1504\cocoasubrtf830
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 Sorry for the incomplete instructions, I slowly added to the script and didn\'92t record everything I did and do not have internet access at the moment to go through and do a complete setup from scratch. If enough people have interest I\'92ll add the complete setup instructions and try to simplify if needed.\
\
Setup instructions\
\
1. Install speedtest-cli (can google this, too lazy and don\'92t have internet access to do right now)\
2. install twitter command line tools \'91apt-get twitter\'92 I believe (command is in tweet_tool.sh)\
3. edit S99test_speeds.sh\
	a. Change OUTPUT_DIR to a directory where you want the data to be stored\
	b. Change TWEET_TOOL to the location of the tweet_tool.sh (should be in repo)\
4. Move/copy S99test_speeds.sh to /usr/local/etc/rc.d/S99test_speeds.sh (this executes the script at startup\
5. Setup twitter command line interface with twitter username and password, should be some twitter commands for this, I forget what they are right now\
\
Running manually\
To run the script manually, do the setup above, and execute \'91./S99test_speeds.sh start\'92 \
To stop it, run \'91./S99test_speeds.sh stop\'92 (just kills the process)}