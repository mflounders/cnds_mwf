#!/bin/bash

# ------------------------------ HELP ------------------------------ #

if [ "$1" == "--help" ] || [ "$1" == "-h" ] 
then

RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m' 
	
	echo -e "
----------------------------------
utils_antsct.sh
	
	Description: wrapper script which updates user on ANTsct pipeline status, used in resting state targeting
	Author: MWF, Last updated: 20190722
	Status: STABLE

	${BLUE}[Template call]${NC}
		./utils_antsct.sh [subj] [study] [email_address]

	${BLUE}[Example call]${NC}
		./utils_antsct.sh P124 NARSAD your.name@email.com
	
	${RED}[Arguments]${NC} 
		subj: string, designating the subject you are processing		
		study: string, designating the study this subject is related to
		email_address: string, email you'd like to send mail updates to 

	${RED}[Output]${NC}
		- log file is created to store all outputs and stages
----------------------------------
		"
	exit 0
fi

# PRESETS
subj=$1
study=$2
email_address=$3
log_Dir=${YOUR_LOG_PATH}
outputTP_Dir=${YOUR_OUTPUT_PATH}
now=$(date +%m_%d_%Y)

# CODE
echo "Timestamp: $now" >> ${log_Dir}/antsct_log_$subj.txt
echo "Path: ${outputTP_Dir}" >> ${log_Dir}/antsct_log_$subj.txt
ls ${outputTP_Dir} >> ${log_Dir}/antsct_log_$subj.txt
cat ${log_Dir}/antsct_log_$subj.txt | mail -s "[CfN]: C${subj} ANTSct Start, Project: $study" $email_address;

sleep 14h; # estimated duration of antsct
updated_outputTP_Dir=${YOUR_ANTSct_OUTPUT_PATH}/${subj};
mv ${outputTP_Dir} ${updated_outputTP_Dir}; # updating location for XCP input
mv ${YOUR_ANTSct_OUTPUT_PATH}/${subj}* ${updated_outputTP_Dir}

echo "Timestamp: $now" >> ${log_Dir}/antsct_log_$subj.txt
echo "Path: ${updated_outputTP_Dir}" >> ${log_Dir}/antsct_log_$subj.txt
ls ${updated_outputTP_Dir} >> ${log_Dir}/antsct_log_$subj.txt
cat ${log_Dir}/antsct_log_$subj.txt | mail -s "[CfN]: C${subj} ANTSct Status, Project: $study" $email_address;
