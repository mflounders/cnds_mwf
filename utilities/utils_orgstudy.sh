#!/bin/bash

# ------------------------------ HELP ------------------------------ #

if [ "$1" == "--help" ] || [ "$1" == "-h" ] 
then

RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m' 
	
	echo -e "
----------------------------------
utils_orgstudy.sh
	
	Description: Wrapper function that summarizes a study according to a predetermined list
	Author: MWF, Last updated: 20190722
	Status: STABLE, supports: TNI, ZAPR01, and NARSAD

	${BLUE}[Template call]${NC}
		./utils_orgstudy.sh [studyname]

	${BLUE}[Example call]${NC}
		./utils_orgstudy.sh TNI
	
	${RED}[Arguments]${NC} 
		studyname: string, designating study you would like a summary of

	${RED}[Output]${NC}
		analysis_sum_[studyname]_[date].csv in your local working directory
		with structure as: subj_code,study,ANTSct,XCP,brainsight
			- 1 = present
			- 0 = missing
      
      requires oathes_group access
----------------------------------
		"
	exit 0
fi

countr=0
countr_xcp=0
subcount=0
subcount_xcp=0
countr_bs=0
subcount_bs=0
now=$(date +%m_%d_%Y)

TNI_list=$TNI_subject_list # string, space separated
ZAPR01_list=$ZAPR01_subject_list # string, space separted
NARSAD_list=$NARSAD_subject_list # string, space separated

study=$1

if [ $study == "TNI" ]; then
	echo "subj_code,study,ANTSct,XCP,brainsight" > ${PWD}/analysis_sum_${study}_$now.csv
	for i_sub in $TNI_list ; 
		do 						
			if [ -e /data/jux/oathes_group/studies/TNI_ZAPR01/MRI/processed/struct/ANTSct/output/$i_sub ]; then 
				ant_rep="1" 
				let countr++
			else
				ant_rep="0" 
				let subcount++
			fi

			if [ -e /data/jux/oathes_group/studies/TNI_ZAPR01/MRI/processed/funct/xcp06/resting_targets/output/targets/TNI_${i_sub}_AP -o -e /data/jux/oathes_group/studies/TNI_ZAPR01/MRI/processed/funct/xcp06/resting_targets/output/targets/${i_sub}_AP ]; then 
				xcp_rep="1" 
				let countr_xcp++
			else
				xcp_rep="0" 
				let subcount_xcp++
			fi

			if [ -e /data/jux/oathes_group/studies/TNI_ZAPR01/MRI/processed/funct/brainsight/${i_sub} ]; then 
				bs_rep="1" 
				let countr_bs++
			else
				bs_rep="0" 
				let subcount_bs++
			fi

			final_output="${i_sub},${study},${ant_rep},${xcp_rep},${bs_rep}"
			echo $final_output >> ${PWD}/analysis_sum_${study}_$now.csv 
	done
	echo 
	echo " ********** SUMMARY ********** "
	echo
	echo "$countr subjects have ANTsct outputs"
	echo "$subcount subjects are missing"
	echo
	echo "$countr_xcp subjects have XCP outputs"
	echo "$subcount_xcp subjects are missing"
	echo
	echo "$countr_bs subjects have brainsight projects"
	echo "$subcount_bs subjects are missing"
	echo
	echo "To review: ${PWD}/analysis_sum_${study}_$now.csv"
	echo
	echo " ****************************** "

elif [ $study == "ZAPR01" ]; then
	echo "subj_code,study,ANTSct,XCP,brainsight" > ${PWD}/analysis_sum_${study}_$now.csv
	for i_sub in $ZAPR01_list ; 
		do 
			if [ -e /data/jux/oathes_group/studies/TNI_ZAPR01/MRI/processed/struct/ANTSct/output/$i_sub ]; then 
				ant_rep="1" 
				let countr++
			else
				ant_rep="0" 
				let subcount++
			fi

			if [ -e /data/jux/oathes_group/studies/TNI_ZAPR01/MRI/processed/funct/xcp06/resting_targets/output/targets/ZAPR01_${i_sub}_AP -o -e /data/jux/oathes_group/studies/TNI_ZAPR01/MRI/processed/funct/xcp06/resting_targets/output/targets/${i_sub}_AP ]; then 
				xcp_rep="1" 
				let countr_xcp++
			else
				xcp_rep="0" 
				let subcount_xcp++
			fi

			if [ -e /data/jux/oathes_group/studies/TNI_ZAPR01/MRI/processed/funct/brainsight/${i_sub} ]; then 
				bs_rep="1" 
				let countr_bs++
			else
				bs_rep="0" 
				let subcount_bs++
			fi

			final_output="${i_sub},${study},${ant_rep},${xcp_rep},${bs_rep}"
			echo $final_output >> ${PWD}/analysis_sum_${study}_$now.csv 
	done
	echo 
	echo " ********** SUMMARY ********** "
	echo
	echo "$countr subjects have ANTsct outputs"
	echo "$subcount subjects are missing"
	echo
	echo "$countr_xcp subjects have XCP outputs"
	echo "$subcount_xcp subjects are missing"
	echo
	echo "$countr_bs subjects have brainsight projects"
	echo "$subcount_bs subjects are missing"
	echo
	echo "To review: ${PWD}/analysis_sum_${study}_$now.csv"
	echo
	echo " ****************************** "

elif [ $study == "NARSAD" ]; then
	echo "subj_code,study,ANTSct,XCP,brainsight" > ${PWD}/analysis_sum_${study}_$now.csv
	for i_sub in $NARSAD_list ; 
		do 
			if [ -e /data/jux/oathes_group/studies/NARSAD/MRI/processed/struct/ANTsct/output/$i_sub ]; then 
				ant_rep="1" 
				let countr++
			else
				ant_rep="0" 
				let subcount++
			fi

			if [ -e /data/jux/oathes_group/studies/TNI_ZAPR01/MRI/processed/funct/xcp06/resting_targets/output/targets/${i_sub}_AP -o -e /data/jux/oathes_group/studies/NARSAD/MRI/processed/funct/xcp06/output/${i_sub}_AP ]; then 
				xcp_rep="1" 
				let countr_xcp++
			else
				xcp_rep="0" 
				let subcount_xcp++
			fi

			if [ -e /data/jux/oathes_group/studies/NARSAD/MRI/processed/funct/brainsight/${i_sub} ]; then 
				bs_rep="1" 
				let countr_bs++
			else
				bs_rep="0" 
				let subcount_bs++
			fi

			final_output="${i_sub},${study},${ant_rep},${xcp_rep},${bs_rep}"
			echo $final_output >> ${PWD}/analysis_sum_${study}_$now.csv 
	done
	echo 
	echo " ********** SUMMARY ********** "
	echo
	echo "$countr subjects have ANTsct outputs"
	echo "$subcount subjects are missing"
	echo
	echo "$countr_xcp subjects have XCP outputs"
	echo "$subcount_xcp subjects are missing"
	echo
	echo "$countr_bs subjects have brainsight projects"
	echo "$subcount_bs subjects are missing"
	echo
	echo "To review: ${PWD}/analysis_sum_${study}_$now.csv"
	echo
	echo " ****************************** "

else 
	echo "ERROR: Try another study argument, or review help by calling: ./utils_orgstudy --help"
fi
