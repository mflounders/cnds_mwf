#!/bin/sh
# Description: Wrapper function to push legacy project data to flywheel, writes log file then emails file
# Author: MWF, 20190517

# ------------------------------ HELP ------------------------------ #

if [ "$1" == "--help" ] || [ "$1" == "-h" ] 
then

RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m' 
	
	echo -e "
${BLUE}flywheel_legacy_push.sh${NC}
	
	Description: Wrapper function to push legacy project data (raw dicoms only) to flywheel, writes log file then emails file
	Author: MWF, Last updated: 20190517
	Status: WORK IN PROGRESS

	${BLUE}[Template call]${NC}
		./flywheel_legacy_push [session_code] [fw_group_id] [fw_project_id] [email_address]

	${BLUE}[Example call]${NC}
		./flywheel_legacy_push Baseline oathes_lab Lerman_TSP john.doe@upenn.edu
	
	${BLUE}[Arguments]${NC} 
		session_code: string, designating session type
		fw_group_id: string, designating Flywheel group id to upload to
		fw_project_id: string, designating Flywheel project to upload to
		email_address: string, designating email address you wish to send log file to

	${RED}[Disclaimer]${NC} You must be logged into Flywheel CLI prior to running this script as well as have Read-Write access to the projects and group you intend to import dicoms to.
		"
	exit 0
fi

# ------------------------------ CODE ------------------------------ #

# variable assignment
session_code=$1 	# e.g. Baseline
fw_group_id=$2 		# e.g. oathes_lab
fw_project_id=$3 	# e.g. Lerman_TSP
email_address=$4 	# e.g. john [dot] doe [at] upenn [dot] edu
now=$(date +%m_%d_%Y)

#initiate log file with column headers, in current directory
echo "subject_code,session_code,fw_group_id,fw_project_id,upload_date,upload_status,upload_note" >> ./upload_log_$now.csv

# wrapper code
for i_sub in /data/jux/oathes_group/studies/${fw_project_id}/MRI/raw/* ;
do
	subject_code=`echo $i_sub | awk -F / '{ print $9 }'`
	if [ -d /data/jux/oathes_group/studies/${fw_project_id}/MRI/raw/${subject_code}/${session_code} ]
	then
		dico_dir=/data/jux/oathes_group/studies/${fw_project_id}/MRI/raw/${subject_code}/${session_code}/RawDico*
		fw import dicom $dico_dir $fw_group_id ${fw_project_id} --subject ${subject_code} --session ${session_code}
		upload_status=1
		upload_note="${subject_code} exists"
	else
		upload_status=0
		upload_note="${subject_code} does not exist"
	fi
	echo "$subject_code,$session_code,$fw_group_id,$fw_project_id,$now,$upload_status,$upload_note" >> ./upload_log_$now.csv
done

# print complete log file
cat ./upload_log_$now.csv 
# email complete log file for record keeping
cat ./upload_log_$now.csv | mail -s "${now} Flywheel Upload Log, Session: ${session_code}, Project: ${fw_project_id}" $email_address


# ------------------------------- END ------------------------------- #

