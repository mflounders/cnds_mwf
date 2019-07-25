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
	Author: MWF, Last updated: 20190725
	Status: STABLE, supports: TNI, ZAPR01, and NARSAD

	${BLUE}[Template call]${NC}
		./utils_orgstudy.sh [studyname]

	${BLUE}[Example call]${NC}
		./utils_orgstudy.sh TNI
	
	${RED}[Arguments]${NC} 
		studyname: string, designating study you would like a summary of

	${RED}[Output]${NC}
		analysis_sum_[studyname]_[date].csv in your local working directory
		with structure as: subj_code,study,ANTSct,XCP,brainsight,fmriprep
			- 1 = present
			- 0 = missing/incomplete
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
countr_fmp=0
subcount_fmp=0
now=$(date +%m_%d_%Y)

TNI_list="C103 C132 C154 C193 C196 C209 C210 C224 C246 C263 C281 C289 C293 C300 C328 C375 C385 C407 C409 C412 C456 C513 C524 C535 C628 C642 C656 C712 C714 C725 C732 C764 C776 C811 C820 C857 C880 C888 C891 C900 C915 C925 C952 C953 C979" 

ZAPR01_list="C130 C134 C148 C172 C178 C189 C193 C207 C209 C210 C219 C220 C221 C261 C262 C263 C264 C269 C289 C291 C305 C309 C311 C318 C328 C351 C354 C369 C371 C385 C390 C394 C412 C427 C468 C470 C540 C556 C602 C656 C701 C712 C714 C735 C750 C763 C765 C797 C811 C820 C868 C891 C900 C915 C952 C953 C961 C991 C750_2 P116 P120 P147 P287 P303 P355 P363 P372 P428 P478 P526 P552 P581 P594 P672 P693 P718 P726 P752 P774 P802 P831 P851 P885 P911 P959 P998"

NARSAD_list="P298 P366 P338 P374 P116 P120 P147 P188 P244 P287 P303 P321 P355 P363 P372 P396 P428 P478 P526 P552 P581 P593 P594 P651 P672 P687 P693 P718 P726 P752 P774 P802 P831 P851 P911 P957 P998 P959 SF9"

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
	echo "$subcount subjects are missing/incomplete"
	echo
	echo "$countr_xcp subjects have XCP outputs"
	echo "$subcount_xcp subjects are missing/incomplete"
	echo
	echo "$countr_bs subjects have brainsight projects"
	echo "$subcount_bs subjects are missing/incomplete"
	echo
	echo "To review: ${PWD}/analysis_sum_${study}_$now.csv"
	echo
	echo " ****************************** "

elif [ $study == "ZAPR01" ]; then
	echo "subj_code,study,ANTSct,XCP,brainsight,fmriprep" > ${PWD}/analysis_sum_${study}_$now.csv
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

			if [ -e /data/jux/oathes_group/studies/TNI_ZAPR01/MRI/processed/funct/fmriprep/sub-ZAPR01${i_sub} ]; then 
				fmp_rep="1" 
				let countr_fmp++
			else
				fmp_rep="0" 
				let subcount_fmp++
			fi

			final_output="${i_sub},${study},${ant_rep},${xcp_rep},${bs_rep},${fmp_rep}"
			echo $final_output >> ${PWD}/analysis_sum_${study}_$now.csv 
	done
	echo 
	echo " ********** SUMMARY ********** "
	echo
	echo "$countr subjects have ANTsct outputs"
	echo "$subcount subjects are missing/incomplete"
	echo
	echo "$countr_xcp subjects have XCP outputs"
	echo "$subcount_xcp subjects are missing/incomplete"
	echo
	echo "$countr_bs subjects have brainsight projects"
	echo "$subcount_bs subjects are missing/incomplete"
	echo
	echo "$countr_fmp subjects have fmriprep outputs"
	echo "$subcount_fmp subjects are missing/incomplete"
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

			if [ -e /data/jux/oathes_group/studies/NARSAD/MRI/processed/funct/xcp06/output/NARSAD_${i_sub}_AP -o -e /data/jux/oathes_group/studies/NARSAD/MRI/processed/funct/xcp06/output/${i_sub}_AP  ]; then 
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
	echo "$subcount subjects are missing/incomplete"
	echo
	echo "$countr_xcp subjects have XCP outputs"
	echo "$subcount_xcp subjects are missing/incomplete"
	echo
	echo "$countr_bs subjects have brainsight projects"
	echo "$subcount_bs subjects are missing/incomplete"
	echo
	echo "To review: ${PWD}/analysis_sum_${study}_$now.csv"
	echo
	echo " ****************************** "

else 
	echo "ERROR: Try another study argument, or review help by calling: ./utils_orgstudy --help"
fi
