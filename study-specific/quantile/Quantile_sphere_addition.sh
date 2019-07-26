#!/bin/bash

# will create a "summary" sphere mask for a given ROI by adding every mask it finds within subfolders

######
###### DOES NOT WORK - MWF 20181129
######

ROI=${1} # options are: BLA, BLA03, SG03, or LSG

PROJECT=/data/jux/oathes_group/projects/floum
SWEEPDIR=${PROJECT}/Quantile/multiplied_${ROI}
OUTDIR=${SWEEPDIR}/tmp

mkdir ${OUTDIR}

	pattern="*/*.nii.gz"
	files=( $pattern )
sum_spheres=${SWEEPDIR}/$(echo $files) # grabs first file (default index is [0])

for i_sphere in $(echo ${SWEEPDIR}/*/*.nii.gz); do
	echo $i_sphere	
	fslmaths $sum_spheres -add $i_sphere ${OUTDIR}/new_spheres.nii.gz
	sum_spheres=${OUTDIR}/new_spheres.nii.gz
done

