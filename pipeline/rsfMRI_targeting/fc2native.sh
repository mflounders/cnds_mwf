#!/bin/bash

# Notes:
# This script should be run from ~/xcp06/output directory of any study type

################################################
############ VARIABLE ASSIGNMENT ###############
################################################ 
subcode=$1
studypath=$PWD # e.g. /data/jux/oathes_group/studies/Lerman_TSP/MRI/processed/funct/xcp06/output/
echo $studypath

################################################
##################### CODE #####################
################################################

mkdir ${studypath}/targets/${subcode}_AP/tmp/ 
mkdir ${studypath}/targets/${subcode}_PA/tmp/ 

###### transforming output to native space
# AP (anterior to posterior direction)
	## sgACC
	antsApplyTransforms -e 3 -d 3 -i targets/${subcode}_AP/seed/sgACC/${subcode}_AP_connectivity_sgACC_sm5.nii.gz -r targets/${subcode}_AP/coreg/${subcode}_AP_target.nii.gz -o ${studypath}/targets/${subcode}_AP/tmp/${subcode}_AP_sgACC_nativeAnatomical.nii.gz -t ${studypath}/targets/${subcode}_AP/coreg/${subcode}_AP_seq2struct.txt
	## BLA
	antsApplyTransforms -e 3 -d 3 -i targets/${subcode}_AP/seed/BLA/${subcode}_AP_connectivity_BLA_sm5.nii.gz -r targets/${subcode}_AP/coreg/${subcode}_AP_target.nii.gz -o ${studypath}/targets/${subcode}_AP/tmp/${subcode}_AP_BLA_nativeAnatomical.nii.gz -t ${studypath}/targets/${subcode}_AP/coreg/${subcode}_AP_seq2struct.txt
echo
echo "COMPLETED: ${subcode}_AP Fcmap to native, sgACC and BLA"
echo
# PA (posterior to anterior direction)
	## sgACC
	antsApplyTransforms -e 3 -d 3 -i targets/${subcode}_PA/seed/sgACC/${subcode}_PA_connectivity_sgACC_sm5.nii.gz -r targets/${subcode}_PA/coreg/${subcode}_PA_target.nii.gz -o ${studypath}/targets/${subcode}_PA/tmp/${subcode}_PA_sgACC_nativeAnatomical.nii.gz -t ${studypath}/targets/${subcode}_PA/coreg/${subcode}_PA_seq2struct.txt
	## BLA
	antsApplyTransforms -e 3 -d 3 -i targets/${subcode}_PA/seed/BLA/${subcode}_PA_connectivity_BLA_sm5.nii.gz -r targets/${subcode}_PA/coreg/${subcode}_PA_target.nii.gz -o ${studypath}/targets/${subcode}_PA/tmp/${subcode}_PA_BLA_nativeAnatomical.nii.gz -t ${studypath}/targets/${subcode}_PA/coreg/${subcode}_PA_seq2struct.txt
echo
echo "COMPLETED: ${subcode}_PA Fcmap to native, sgACC and BLA"
echo "NEXT: Running 3dcalc on nativeAnatomicals to average directions"
echo

###### averaging per ROI
# BLA average
3dcalc -a ${studypath}/targets/${subcode}_AP/tmp/${subcode}_AP_BLA_nativeAnatomical.nii.gz -b ${studypath}/targets/${subcode}_PA/tmp/${subcode}_PA_BLA_nativeAnatomical.nii.gz -expr '(a+b)/2' -prefix ${studypath}/fcmaps/${subcode}_aver_native_BLA_map.nii.gz
	echo
	echo "COMPLETED: BLA fcmaps averaged"
	echo
# sgACC average
3dcalc -a ${studypath}/targets/${subcode}_AP/tmp/${subcode}_AP_sgACC_nativeAnatomical.nii.gz -b ${studypath}/targets/${subcode}_PA/tmp/${subcode}_PA_sgACC_nativeAnatomical.nii.gz -expr '(a+b)/2' -prefix ${studypath}/fcmaps/${subcode}_aver_native_sgACC_map.nii.gz
	echo
	echo "COMPLETED: sgACC fcmaps averaged"
	echo

echo "fc2native complete. See ${studypath}/fcmaps/"

################################################
##################### END ######################
################################################


