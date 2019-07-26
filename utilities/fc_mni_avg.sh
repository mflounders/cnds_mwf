#!/bin/bash

# Notes: this script is currently wrapped into wrapper_fcmniavg_ZAPR01.sh

################################################
############ VARIABLE ASSIGNMENT ###############
################################################ 
subcode=$1
studypath=$2 #/data/jux/oathes_group/studies/TNI_ZAPR01/MRI/processed/funct/xcp06/resting_targets/output/targets
outputpath=$3 #/data/jux/oathes_group/studies/TNI_ZAPR01/MRI/processed/funct/xcp06/resting_targets/output
echo $studypath

################################################
##################### CODE #####################
################################################

###### averaging per ROI
# BLA average
/data/jag/cnds/nbalderston/software/afni/inuse/3dcalc -a ${studypath}/ZAPR01_${subcode}_AP/seed/BLA/${subcode}_AP_connectivity_BLA_sm5.nii.gz -b ${studypath}/ZAPR01_${subcode}_PA/seed/BLA/${subcode}_PA_connectivity_BLA_sm5.nii.gz -expr '(a+b)/2' -prefix ${outputpath}/fcmaps_MNI/${subcode}_aver_MNI_BLA_map.nii.gz
	echo
	echo "COMPLETED: BLA MNI-fcmap averaged"
	echo
# sgACC average
/data/jag/cnds/nbalderston/software/afni/inuse/3dcalc -a ${studypath}/ZAPR01_${subcode}_AP/seed/sgACC/${subcode}_AP_connectivity_sgACC_sm5.nii.gz -b ${studypath}/ZAPR01_${subcode}_PA/seed/sgACC/${subcode}_PA_connectivity_sgACC_sm5.nii.gz -expr '(a+b)/2' -prefix ${outputpath}/fcmaps_MNI/${subcode}_aver_MNI_sgACC_map.nii.gz
	echo
	echo "COMPLETED: sgACC MNI-fcmaps averaged"
	echo

echo "$subcode: MNI fc avg complete"

################################################
##################### END ######################
################################################


