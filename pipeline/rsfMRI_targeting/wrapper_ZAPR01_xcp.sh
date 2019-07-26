#!/bin/bash
# wrapper script that calls xcp_61 and runs the following modules: localiser, prestats, coreg, confound, regress, seed, norm
# Written by: MWF on 20181128

# PRESETS
sleep_time=$1
email_address=$2
subject_code=$3

# SCRIPT

echo "sleeping for $sleep_time"
sleep $sleep_time

start_date_time="`date +%Y-%m-%d--%H:%M:%S`"
mail -s "[CfN]: XCP starting, ZAP R01" $email_address

echo
echo "Beginning XCP FC Analysis for ZAP R01 project"
echo $start_date_time
echo

/data/jag/cnds/applications/xcp_installs/xcpEngine_061/xcpEngine/xcpEngine -d /data/jux/oathes_group/studies/TNI_ZAPR01/MRI/processed/funct/xcp06/resting_targets/design/old/design_TMSfMRI.dsn -c /data/jux/oathes_group/studies/TNI_ZAPR01/MRI/processed/funct/xcp06/resting_targets/config/cohort_rsfc.csv -o /data/jux/oathes_group/studies/TNI_ZAPR01/MRI/processed/funct/xcp06/resting_targets/output/targets/ -m c -t 1

finish_date_time="`date +%Y-%m-%d--%H:%M:%S`"

echo 
echo "XCP FC Analysis for ZAP R01 project complete"
echo $finish_date_time
echo

cat /data/jux/oathes_group/studies/TNI_ZAPR01/MRI/processed/funct/xcp06/resting_targets/output/targets/${subject_code}_AP/*logs/*audit* | mail -s "[CfN]: XCP completed, ZAP R01" $email_address  
