#!/bin/bash

# Notes:
# This script should be run from ~/xcp06/output directory of any study type

################################################
############ VARIABLE ASSIGNMENT ###############
################################################ 
subcode=$1
studypath=/data/jux/oathes_group/studies/TNI_ZAPR01/MRI/processed/funct/xcp06/resting_targets/output/targets # e.g. /data/jux/oathes_group/studies/Lerman_TSP/MRI/processed/funct/xcp06/output/
outputpath=/data/jux/oathes_group/studies/TNI_ZAPR01/MRI/processed/funct/xcp06/resting_targets/output
echo $studypath

################################################
##################### CODE #####################
################################################

mkdir ${studypath}/ZAPR01_${subcode}_AP/tmp/ 
mkdir ${studypath}/ZAPR01_${subcode}_PA/tmp/ 

###### transforming output to native space
# AP (anterior to posterior direction)
	## sgACC
	antsApplyTransforms -e 3 -d 3 -i ${studypath}/ZAPR01_${subcode}_AP/seed/sgACC/${subcode}_AP_connectivity_sgACCZ_sm5.nii.gz -r ${studypath}/ZAPR01_${subcode}_AP/coreg/${subcode}_AP_target.nii.gz -o ${studypath}/ZAPR01_${subcode}_AP/tmp/${subcode}_AP_sgACCZ_nativeAnatomical.nii.gz -t ${studypath}/ZAPR01_${subcode}_AP/coreg/${subcode}_AP_seq2struct.txt
	## BLA
	antsApplyTransforms -e 3 -d 3 -i ${studypath}/ZAPR01_${subcode}_AP/seed/BLA/${subcode}_AP_connectivity_BLAZ_sm5.nii.gz -r ${studypath}/ZAPR01_${subcode}_AP/coreg/${subcode}_AP_target.nii.gz -o ${studypath}/ZAPR01_${subcode}_AP/tmp/${subcode}_AP_BLAZ_nativeAnatomical.nii.gz -t ${studypath}/ZAPR01_${subcode}_AP/coreg/${subcode}_AP_seq2struct.txt
echo
echo "COMPLETED: ${subcode}_AP Z-Fcmap to native, sgACC and BLA"
echo
# PA (posterior to anterior direction)
	## sgACC
	antsApplyTransforms -e 3 -d 3 -i ${studypath}/ZAPR01_${subcode}_PA/seed/sgACC/${subcode}_PA_connectivity_sgACCZ_sm5.nii.gz -r ${studypath}/ZAPR01_${subcode}_PA/coreg/${subcode}_PA_target.nii.gz -o ${studypath}/ZAPR01_${subcode}_PA/tmp/${subcode}_PA_sgACCZ_nativeAnatomical.nii.gz -t ${studypath}/ZAPR01_${subcode}_PA/coreg/${subcode}_PA_seq2struct.txt
	## BLA
	antsApplyTransforms -e 3 -d 3 -i ${studypath}/ZAPR01_${subcode}_PA/seed/BLA/${subcode}_PA_connectivity_BLAZ_sm5.nii.gz -r ${studypath}/ZAPR01_${subcode}_PA/coreg/${subcode}_PA_target.nii.gz -o ${studypath}/ZAPR01_${subcode}_PA/tmp/${subcode}_PA_BLAZ_nativeAnatomical.nii.gz -t ${studypath}/ZAPR01_${subcode}_PA/coreg/${subcode}_PA_seq2struct.txt
echo
echo "COMPLETED: ${subcode}_PA Z-Fcmap to native, sgACC and BLA"
echo "NEXT: Running 3dcalc on nativeAnatomicals to average directions"
echo

###### averaging per ROI
# BLA average
/data/jag/cnds/nbalderston/software/afni/inuse/3dcalc -a ${studypath}/ZAPR01_${subcode}_AP/tmp/${subcode}_AP_BLAZ_nativeAnatomical.nii.gz -b ${studypath}/ZAPR01_${subcode}_PA/tmp/${subcode}_PA_BLAZ_nativeAnatomical.nii.gz -expr '(a+b)/2' -prefix ${outputpath}/fcmaps_z/${subcode}_aver_native_BLAZ_map.nii.gz
	echo
	echo "COMPLETED: BLA Z-Fcmaps averaged"
	echo
# sgACC average
/data/jag/cnds/nbalderston/software/afni/inuse/3dcalc -a ${studypath}/ZAPR01_${subcode}_AP/tmp/${subcode}_AP_sgACCZ_nativeAnatomical.nii.gz -b ${studypath}/ZAPR01_${subcode}_PA/tmp/${subcode}_PA_sgACCZ_nativeAnatomical.nii.gz -expr '(a+b)/2' -prefix ${outputpath}/fcmaps_z/${subcode}_aver_native_sgACCZ_map.nii.gz
	echo
	echo "COMPLETED: sgACC Z-Fcmaps averaged"
	echo

echo "fcz2native complete"

################################################
##################### END ######################
################################################


