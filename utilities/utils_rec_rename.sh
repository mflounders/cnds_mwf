#!/bin/bash

# ------------------------------ HELP ------------------------------ #

if [ "$1" == "--help" ] || [ "$1" == "-h" ] 
then

RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m' 
	
	echo -e "
----------------------------------
utils_rec_rename.sh
	
	Description: Wrapper function recursively renames xcp outputs and assigns them to appropriate location on CfN
	Author: MWF, Last updated: 20190722
	Status: STABLE, supports: TNI, ZAPR01, and NARSAD

	${BLUE}[Template call]${NC}
		./utils_rec_rename.sh [code] [cohort] [study]

	${BLUE}[Example call]${NC}
		./utils_rec_rename.sh 103 C ZAPR01
	
	${RED}[Arguments]${NC} 
		code: string, designating subject of interest
		cohort: string, designating subject's appropriate cohort, usually C or P
		study: string, designating study that this subject's xcp output is associated with

	${RED}[Output]${NC}
		- an updated folder directory located in appropriate study file structure
		- README.txt will be created in final output directory
		------- the script will also echo this final location and information for you
----------------------------------
		"
	exit 0
fi

code=$1 # 103
cohort=$2 # P or C
study=$3 # TNI, ZAPR01, or both

headpath=${PWD} # should be an xcp output directory
outputpath=${YOUR_INTENDED_OUTPUT_DIR} # full path
now=$(date +%m_%d_%Y)

if [ -e ${headpath}/${code}_AP -a -e ${headpath}/${code}_PA ]; then

# ------------------ step 1: update xcp output with appropriate cohort tag
	mv ${code}_AP ${cohort}${code}_AP;
	mv ${code}_PA ${cohort}${code}_PA;
	echo "${code} updated to ${cohort}${code}" 

# ------------------ step 2: recursively rename xcp output with appropriate cohort tag

	if [ -e ${headpath}/${cohort}${code}_AP -a -e ${headpath}/${cohort}${code}_PA ]; then

		cd ${headpath}/${cohort}${code}_AP;
		for i in *$code*; do mv "$i" "$cohort$i"; done;
		# update atlas directory
		cd ${headpath}/${cohort}${code}_AP/*atlas; for i in *$code*; do mv "$i" "$cohort$i"; done;
		#update norm directory
		cd ${headpath}/${cohort}${code}_AP/norm; for i in *$code*; do mv "$i" "$cohort$i"; done;
		#update prestats directory
		cd ${headpath}/${cohort}${code}_AP/prestats; for i in *$code*; do mv "$i" "$cohort$i"; done; cd ${headpath}/${cohort}${code}_AP/prestats/mc; for i in *$code*; do mv "$i" "$cohort$i"; done
		#update seed directory
		cd ${headpath}/${cohort}${code}_AP/seed; for i in *$code*; do mv "$i" "$cohort$i"; done; cd ${headpath}/${cohort}${code}_AP/seed/BLA; for i in *$code*; do mv "$i" "$cohort$i"; done; cd ${headpath}/${cohort}${code}_AP/seed/sgACC; for i in *$code*; do mv "$i" "$cohort$i"; done;

		cd ${headpath}/${cohort}${code}_PA;
		for i in *$code*; do mv "$i" "$cohort$i"; done;
		# update atlas directory
		cd ${headpath}/${cohort}${code}_PA/*atlas; for i in *$code*; do mv "$i" "$cohort$i"; done;
		#update norm directory
		cd ${headpath}/${cohort}${code}_PA/norm; for i in *$code*; do mv "$i" "$cohort$i"; done;
		#update prestats directory
		cd ${headpath}/${cohort}${code}_PA/prestats; for i in *$code*; do mv "$i" "$cohort$i"; done; cd ${headpath}/${cohort}${code}_PA/prestats/mc; for i in *$code*; do mv "$i" "$cohort$i"; done
		#update seed directory
		cd ${headpath}/${cohort}${code}_PA/seed; for i in *$code*; do mv "$i" "$cohort$i"; done; cd ${headpath}/${cohort}${code}_PA/seed/BLA; for i in *$code*; do mv "$i" "$cohort$i"; done; cd ${headpath}/${cohort}${code}_PA/seed/sgACC; for i in *$code*; do mv "$i" "$cohort$i"; done;

		echo "subfolders and contents renamed, review ${cohort}${code} directories"

	else
		echo
		echo "WARNING: you do not want to run recursive renaming. risks an error, ${cohort}${code} may already exists"
		echo
	fi

# ------------------ step 3: copy updated xcp output directory to appropriate study location, generate README that logs changes
	if [ $study == "Neither" ]; then
		echo "no copying applied. ${cohort}${code} directory staying put"
	else
		cp -r ${headpath}/${cohort}${code}_AP ${outputpath}/${study}_${cohort}${code}_AP
		echo "copied from $headpath/${cohort}${code}_AP on $now" > ${outputpath}/${study}_${cohort}${code}_AP/README.txt
	
		cp -r ${headpath}/${cohort}${code}_PA ${outputpath}/${study}_${cohort}${code}_PA
		echo "copied from $headpath/${cohort}${code}_PA on $now" > ${outputpath}/${study}_${cohort}${code}_PA/README.txt
		echo "browse updated file structure at: $outputpath"
	fi

else
	echo
	echo "WARNING: ${code} does not exist, risks error and script was cancelled"
	echo
fi
