#!/bin/bash

# Last updated: MWF, 6/4/19 to run _____

subj=$1
T1No=$2
tag=$3

dataRootDir=/data/jux/oathes_group/studies/TNI_ZAPR01/MRI/processed/struct/ANTSct/T1s/${tag}/

ANTSPATH=/data/jag/cnds/vascularDepression/bin/ants/

templateDir=/data/jag/cnds/vascularDepression/templates/OASIS/

if [[ $# -lt 1 ]]; then
cat <<USAGE

  $0 <subject> <timepoint> <outputRootDir>
  
  subject - subject ID
  timepoint - scan date

  Script looks for data in $dataRootDir

  Uses template in $templateDir

  Uses ANTs in $ANTSPATH

  outputRootDir - root directory for output; script creates subject/timepoint subdirectory 

  Example: $0 123456 20140301 /data/jet/me/output

USAGE

exit 1

fi

#t1=$(cd && ls /data/jag/cnds/romain/ANTsct/ANTsct_scripts/T1s/${tag}/)
t1=`ls ${dataRootDir}/*.nii.gz | head -n ${T1No}`
echo $t1
#if [[ ! -f $t1 ]]; then
#  echo
#  echo " Cannot find T1 image in $t1"
#  echo
#  exit 1
#fi

outputTP_Dir=/data/jux/oathes_group/studies/TNI_ZAPR01/MRI/processed/struct/ANTSct/output/${subj}

#if [[ -d "$outputTP_Dir" ]]; then
#  echo
#  echo " Output directory $outputTP_Dir already exists. Move it or set output root dir somewhere else "
#  exit 1
#fi

echo '-------output dir---------'
echo ${outputTP_Dir}
$(cd /data/jux/oathes_group/studies/TNI_ZAPR01/MRI/processed/struct/ANTSct/output/)
mkdir ${outputTP_Dir}

template=${templateDir}/T_template0.nii.gz
templateBrain=${templateDir}/T_template0_BrainCerebellum.nii.gz
templateBrainMask=${templateDir}/T_template0_BrainCerebellumProbabilityMask.nii.gz
templateBrainRegMask=${templateDir}/T_template0_BrainCerebellumRegistrationMask.nii.gz
# printf style string
templatePriors="${templateDir}/Priors/priors%d.nii.gz"

cat ${ANTSPATH}version.txt > ${outputTP_Dir}/antsVersion.txt

scriptToRun=${outputTP_Dir}/antsct_${subj}.sh

cat > ${scriptToRun} << ANTSCT_SUBJ_JOB_SCRIPT

export ANTSPATH=${ANTSPATH}
#$(cd /data/jag/cnds/romain/ANTsct/ANTsct_scripts/T1s/${tag}/)
echo '-----------HERE--------------'
echo '-------------t1--------------'
echo $t1
$(ls)
${ANTSPATH}antsCorticalThickness.sh -d 3 -a $t1 -e ${template} -m ${templateBrainMask} -f ${templateBrainRegMask} -p ${templatePriors} -t ${templateBrain} -o ${outputTP_Dir}

ANTSCT_SUBJ_JOB_SCRIPT

slots=2

# Memory limits are a balance of speed (less RAM means more things run) and allocating enough RAM for every part of the pipeline

cmd="qsub -l h_vmem=15G,s_vmem=15G -pe unihost $slots -binding linear:${slots} -S /bin/bash -cwd -o ${outputTP_Dir}/${subj}.stdout -e ${outputTP_Dir}/${subj}.stderr ${scriptToRun}"

echo $cmd
echo
$cmd
sleep 0.5
echo

