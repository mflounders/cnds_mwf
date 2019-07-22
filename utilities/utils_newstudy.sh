#!/bin/bash

# ------------------------------ HELP ------------------------------ #

if [ "$1" == "--help" ] || [ "$1" == "-h" ] 
then

RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m' 
	
	echo -e "
----------------------------------
utils_newstudy.sh
	
	Description: script generates new study file structure on CfN
	Author: MWF, Last updated: 20190722
	Status: STABLE

	${BLUE}[Template call]${NC}
		./utils_newstudy.sh [study]

	${BLUE}[Example call]${NC}
		./utils_newstudy.sh newstudy2
	
	${RED}[Arguments]${NC} 
		study: string, designating the new study name

	${RED}[Output]${NC}
		- new directories will be created according to standard file structure expectations
		------- tree command is called to echo the final structure created
----------------------------------
		"
	exit 0
fi

studyname=$1

# base study
mkdir ${PWD}/$studyname

## 2nd level
mkdir ${PWD}/$studyname/behavioral
mkdir ${PWD}/$studyname/MRI
	### 3rd level
	mkdir ${PWD}/$studyname/MRI/processed
		#### 4th level
		mkdir ${PWD}/$studyname/MRI/processed/funct
			##### 5th level
			mkdir ${PWD}/$studyname/MRI/processed/funct/brainsight
			mkdir ${PWD}/$studyname/MRI/processed/funct/xcp06
				###### 6th level
				mkdir ${PWD}/$studyname/MRI/processed/funct/xcp06/resting_targets
					####### 7th level
					mkdir ${PWD}/$studyname/MRI/processed/funct/xcp06/resting_targets/input
					mkdir ${PWD}/$studyname/MRI/processed/funct/xcp06/resting_targets/output
						######## 8th level
						mkdir ${PWD}/$studyname/MRI/processed/funct/xcp06/resting_targets/output/fcmaps
						mkdir ${PWD}/$studyname/MRI/processed/funct/xcp06/resting_targets/output/targets
					mkdir ${PWD}/$studyname/MRI/processed/funct/xcp06/resting_targets/config
					mkdir ${PWD}/$studyname/MRI/processed/funct/xcp06/resting_targets/design
					mkdir ${PWD}/$studyname/MRI/processed/funct/xcp06/resting_targets/scripts

				mkdir ${PWD}/$studyname/MRI/processed/funct/xcp06/resting_prepost
					####### 7th level
					mkdir ${PWD}/$studyname/MRI/processed/funct/xcp06/resting_prepost/input
					mkdir ${PWD}/$studyname/MRI/processed/funct/xcp06/resting_prepost/output
						######## 8th level
						mkdir ${PWD}/$studyname/MRI/processed/funct/xcp06/resting_prepost/fcmaps
						mkdir ${PWD}/$studyname/MRI/processed/funct/xcp06/resting_prepost/targets
					mkdir ${PWD}/$studyname/MRI/processed/funct/xcp06/resting_prepost/config
					mkdir ${PWD}/$studyname/MRI/processed/funct/xcp06/resting_prepost/design
					mkdir ${PWD}/$studyname/MRI/processed/funct/xcp06/resting_prepost/scripts
		mkdir ${PWD}/$studyname/MRI/processed/struct
			##### 5th level
			mkdir ${PWD}/$studyname/MRI/processed/struct/ANTSct
				###### 6th level
				mkdir ${PWD}/$studyname/MRI/processed/struct/ANTSct/output
				mkdir ${PWD}/$studyname/MRI/processed/struct/ANTSct/T1s

			mkdir ${PWD}/$studyname/MRI/processed/struct/freesurfer

echo
echo "++ $studyname study directory created, see below for tree output"
echo
tree ${PWD}/${studyname} -dL 8
