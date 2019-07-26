#!/bin/bash

## PRESETS

PROJDIR=/data/jux/oathes_group/projects/floum/Quantile

########### BLA 

# ${PROJDIR}/multiplied_BLA/041/041_1_4.nii.gz -add
# ${PROJDIR}/multiplied_BLA/081/081_1_3.nii.gz -add
# ${PROJDIR}/multiplied_BLA/091/091_1_3.nii.gz -add

fslmaths ${PROJDIR}/multiplied_BLA/111/111_1_1.nii.gz -add  ${PROJDIR}/multiplied_BLA/111/111_1_2.nii.gz -add  ${PROJDIR}/multiplied_BLA/111/111_1_3.nii.gz ${PROJDIR}/multiplied_BLA/111summed_spheres;

fslmaths ${PROJDIR}/multiplied_BLA/121/121_1_1.nii.gz -add  ${PROJDIR}/multiplied_BLA/121/121_1_2.nii.gz -add  ${PROJDIR}/multiplied_BLA/121/121_1_4.nii.gz -add  ${PROJDIR}/multiplied_BLA/121/121_1_5.nii.gz -add  ${PROJDIR}/multiplied_BLA/121/121_2_2.nii.gz -add  ${PROJDIR}/multiplied_BLA/121/121_2_3.nii.gz -add  ${PROJDIR}/multiplied_BLA/121/121_2_4.nii.gz ${PROJDIR}/multiplied_BLA/121summed_spheres;

fslmaths ${PROJDIR}/multiplied_BLA/201/201_1_1.nii.gz -add  ${PROJDIR}/multiplied_BLA/201/201_1_2.nii.gz -add  ${PROJDIR}/multiplied_BLA/201/201_1_3.nii.gz -add  ${PROJDIR}/multiplied_BLA/201/201_1_5.nii.gz ${PROJDIR}/multiplied_BLA/201summed_spheres;

fslmaths ${PROJDIR}/multiplied_BLA/211/211_1_1.nii.gz -add  ${PROJDIR}/multiplied_BLA/211/211_1_2.nii.gz -add  ${PROJDIR}/multiplied_BLA/211/211_1_3.nii.gz -add  ${PROJDIR}/multiplied_BLA/211/211_1_4.nii.gz -add  ${PROJDIR}/multiplied_BLA/211/211_1_5.nii.gz ${PROJDIR}/multiplied_BLA/211summed_spheres;

fslmaths ${PROJDIR}/multiplied_BLA/241/241_1_1.nii.gz -add  ${PROJDIR}/multiplied_BLA/241/241_1_3.nii.gz ${PROJDIR}/multiplied_BLA/241summed_spheres;

# ${PROJDIR}/multiplied_BLA/271/271_1_1.nii.gz -add  

fslmaths ${PROJDIR}/multiplied_BLA/281/281_1_1.nii.gz -add  ${PROJDIR}/multiplied_BLA/281/281_1_2.nii.gz -add  ${PROJDIR}/multiplied_BLA/281/281_1_3.nii.gz -add  ${PROJDIR}/multiplied_BLA/281/281_2_1.nii.gz -add  ${PROJDIR}/multiplied_BLA/281/281_2_2.nii.gz -add  ${PROJDIR}/multiplied_BLA/281/281_2_3.nii.gz -add  ${PROJDIR}/multiplied_BLA/281/281_2_4.nii.gz -add  ${PROJDIR}/multiplied_BLA/281/281_2_5.nii.gz ${PROJDIR}/multiplied_BLA/281summed_spheres;

fslmaths ${PROJDIR}/multiplied_BLA/291/291_1_1.nii.gz -add  ${PROJDIR}/multiplied_BLA/291/291_1_4.nii.gz ${PROJDIR}/multiplied_BLA/291summed_spheres;

fslmaths ${PROJDIR}/multiplied_BLA/300/300_1_1.nii.gz -add  ${PROJDIR}/multiplied_BLA/300/300_1_5.nii.gz -add  ${PROJDIR}/multiplied_BLA/300/300_2_2.nii.gz -add  ${PROJDIR}/multiplied_BLA/300/300_2_5.nii.gz -add  ${PROJDIR}/multiplied_BLA/300/300_2_6.nii.gz ${PROJDIR}/multiplied_BLA/300summed_spheres;

# ${PROJDIR}/multiplied_BLA/301/301_1_5.nii.gz -add

fslmaths ${PROJDIR}/multiplied_BLA/321/321_1_2.nii.gz -add ${PROJDIR}/multiplied_BLA/321/321_1_3.nii.gz -add ${PROJDIR}/multiplied_BLA/321/321_1_4.nii.gz -add ${PROJDIR}/multiplied_BLA/321/321_2_1.nii.gz -add ${PROJDIR}/multiplied_BLA/321/321_2_3.nii.gz -add ${PROJDIR}/multiplied_BLA/321/321_2_5.nii.gz ${PROJDIR}/multiplied_BLA/321summed_spheres;

echo " "
echo "COMPLETED ROI: BLA, summed files created"
echo " "

########### BLA03

# ${PROJDIR}/multiplied_BLA03/041/041_1_4.nii.gz
# ${PROJDIR}/multiplied_BLA03/081/081_1_3.nii.gz
# ${PROJDIR}/multiplied_BLA03/091/091_1_3.nii.gz
fslmaths ${PROJDIR}/multiplied_BLA03/111/111_1_1.nii.gz -add ${PROJDIR}/multiplied_BLA03/111/111_1_2.nii.gz -add ${PROJDIR}/multiplied_BLA03/111/111_1_3.nii.gz ${PROJDIR}/multiplied_BLA03/111summed_spheres; 

fslmaths ${PROJDIR}/multiplied_BLA03/121/121_1_1.nii.gz -add ${PROJDIR}/multiplied_BLA03/121/121_1_2.nii.gz -add ${PROJDIR}/multiplied_BLA03/121/121_1_4.nii.gz -add ${PROJDIR}/multiplied_BLA03/121/121_1_5.nii.gz -add ${PROJDIR}/multiplied_BLA03/121/121_2_2.nii.gz -add ${PROJDIR}/multiplied_BLA03/121/121_2_3.nii.gz -add ${PROJDIR}/multiplied_BLA03/121/121_2_4.nii.gz ${PROJDIR}/multiplied_BLA03/121summed_spheres;

fslmaths ${PROJDIR}/multiplied_BLA03/201/201_1_1.nii.gz -add ${PROJDIR}/multiplied_BLA03/201/201_1_2.nii.gz -add ${PROJDIR}/multiplied_BLA03/201/201_1_3.nii.gz -add ${PROJDIR}/multiplied_BLA03/201/201_1_5.nii.gz ${PROJDIR}/multiplied_BLA03/201summed_spheres;

fslmaths ${PROJDIR}/multiplied_BLA03/211/211_1_1.nii.gz -add ${PROJDIR}/multiplied_BLA03/211/211_1_2.nii.gz -add ${PROJDIR}/multiplied_BLA03/211/211_1_3.nii.gz -add ${PROJDIR}/multiplied_BLA03/211/211_1_4.nii.gz -add ${PROJDIR}/multiplied_BLA03/211/211_1_5.nii.gz ${PROJDIR}/multiplied_BLA03/211summed_spheres;

fslmaths ${PROJDIR}/multiplied_BLA03/241/241_1_1.nii.gz -add ${PROJDIR}/multiplied_BLA03/241/241_1_3.nii.gz ${PROJDIR}/multiplied_BLA03/241summed_spheres;

# ${PROJDIR}/multiplied_BLA03/271/271_1_1.nii.gz 

fslmaths ${PROJDIR}/multiplied_BLA03/281/281_1_1.nii.gz -add ${PROJDIR}/multiplied_BLA03/281/281_1_2.nii.gz -add ${PROJDIR}/multiplied_BLA03/281/281_1_3.nii.gz -add ${PROJDIR}/multiplied_BLA03/281/281_2_1.nii.gz -add ${PROJDIR}/multiplied_BLA03/281/281_2_2.nii.gz -add ${PROJDIR}/multiplied_BLA03/281/281_2_3.nii.gz -add ${PROJDIR}/multiplied_BLA03/281/281_2_4.nii.gz -add ${PROJDIR}/multiplied_BLA03/281/281_2_5.nii.gz ${PROJDIR}/multiplied_BLA03/281summed_spheres;

fslmaths ${PROJDIR}/multiplied_BLA03/291/291_1_1.nii.gz -add ${PROJDIR}/multiplied_BLA03/291/291_1_4.nii.gz ${PROJDIR}/multiplied_BLA03/291summed_spheres;

fslmaths ${PROJDIR}/multiplied_BLA03/300/300_1_1.nii.gz -add ${PROJDIR}/multiplied_BLA03/300/300_1_5.nii.gz -add ${PROJDIR}/multiplied_BLA03/300/300_2_2.nii.gz -add ${PROJDIR}/multiplied_BLA03/300/300_2_5.nii.gz -add ${PROJDIR}/multiplied_BLA03/300/300_2_6.nii.gz ${PROJDIR}/multiplied_BLA03/300summed_spheres;

# ${PROJDIR}/multiplied_BLA03/301/301_1_5.nii.gz

fslmaths ${PROJDIR}/multiplied_BLA03/321/321_1_2.nii.gz -add ${PROJDIR}/multiplied_BLA03/321/321_1_3.nii.gz -add ${PROJDIR}/multiplied_BLA03/321/321_1_4.nii.gz -add ${PROJDIR}/multiplied_BLA03/321/321_2_1.nii.gz -add ${PROJDIR}/multiplied_BLA03/321/321_2_3.nii.gz -add ${PROJDIR}/multiplied_BLA03/321/321_2_5.nii.gz ${PROJDIR}/multiplied_BLA03/321summed_spheres;

echo " "
echo "COMPLETED ROI: BLA03, summed files created"
echo " "

########## SG03

#fslmaths ${PROJDIR}/multiplied_SG03/081/081_1_6.nii.gz
 
fslmaths ${PROJDIR}/multiplied_SG03/091/091_1_2.nii.gz -add ${PROJDIR}/multiplied_SG03/091/091_1_4.nii.gz ${PROJDIR}/multiplied_SG03/091summed_spheres;

fslmaths ${PROJDIR}/multiplied_SG03/121/121_1_1.nii.gz -add ${PROJDIR}/multiplied_SG03/121/121_2_1.nii.gz ${PROJDIR}/multiplied_SG03/121summed_spheres;

fslmaths ${PROJDIR}/multiplied_SG03/201/201_1_1.nii.gz -add ${PROJDIR}/multiplied_SG03/201/201_1_2.nii.gz ${PROJDIR}/multiplied_SG03/201summed_spheres;

fslmaths ${PROJDIR}/multiplied_SG03/211/211_1_1.nii.gz -add ${PROJDIR}/multiplied_SG03/211/211_1_2.nii.gz -add ${PROJDIR}/multiplied_SG03/211/211_1_4.nii.gz ${PROJDIR}/multiplied_SG03/211summed_spheres;

fslmaths ${PROJDIR}/multiplied_SG03/241/241_1_1.nii.gz -add ${PROJDIR}/multiplied_SG03/241/241_1_2.nii.gz -add ${PROJDIR}/multiplied_SG03/241/241_1_3.nii.gz -add ${PROJDIR}/multiplied_SG03/241/241_1_4.nii.gz ${PROJDIR}/multiplied_SG03/241summed_spheres;

fslmaths ${PROJDIR}/multiplied_SG03/271/271_1_2.nii.gz -add ${PROJDIR}/multiplied_SG03/271/271_1_3.nii.gz -add ${PROJDIR}/multiplied_SG03/271/271_1_4.nii.gz ${PROJDIR}/multiplied_SG03/271summed_spheres;

fslmaths ${PROJDIR}/multiplied_SG03/281/281_1_1.nii.gz -add ${PROJDIR}/multiplied_SG03/281/281_1_3.nii.gz -add ${PROJDIR}/multiplied_SG03/281/281_2_1.nii.gz -add ${PROJDIR}/multiplied_SG03/281/281_2_5.nii.gz ${PROJDIR}/multiplied_SG03/281summed_spheres;

# ${PROJDIR}/multiplied_SG03/291/291_1_3.nii.gz 

fslmaths ${PROJDIR}/multiplied_SG03/300/300_1_2.nii.gz -add ${PROJDIR}/multiplied_SG03/300/300_1_3.nii.gz -add ${PROJDIR}/multiplied_SG03/300/300_1_6.nii.gz -add ${PROJDIR}/multiplied_SG03/300/300_2_1.nii.gz -add ${PROJDIR}/multiplied_SG03/300/300_2_3.nii.gz -add ${PROJDIR}/multiplied_SG03/300/300_2_4.nii.gz -add ${PROJDIR}/multiplied_SG03/300/300_2_6.nii.gz ${PROJDIR}/multiplied_SG03/300summed_spheres;

fslmaths ${PROJDIR}/multiplied_SG03/301/301_1_1.nii.gz -add ${PROJDIR}/multiplied_SG03/301/301_1_2.nii.gz -add ${PROJDIR}/multiplied_SG03/301/301_1_3.nii.gz ${PROJDIR}/multiplied_SG03/301summed_spheres;

fslmaths ${PROJDIR}/multiplied_SG03/321/321_1_1.nii.gz -add ${PROJDIR}/multiplied_SG03/321/321_1_3.nii.gz -add ${PROJDIR}/multiplied_SG03/321/321_1_4.nii.gz -add ${PROJDIR}/multiplied_SG03/321/321_1_5.nii.gz -add ${PROJDIR}/multiplied_SG03/321/321_2_1.nii.gz -add ${PROJDIR}/multiplied_SG03/321/321_2_2.nii.gz -add ${PROJDIR}/multiplied_SG03/321/321_2_3.nii.gz -add ${PROJDIR}/multiplied_SG03/321/321_2_4.nii.gz -add ${PROJDIR}/multiplied_SG03/321/321_2_5.nii.gz ${PROJDIR}/multiplied_SG03/321summed_spheres;

echo " "
echo "COMPLETED ROI: SG03, summed files created"
echo " "

############## LSG

#fslmaths ${PROJDIR}/multiplied_LSG/081/081_1_6.nii.gz 

fslmaths ${PROJDIR}/multiplied_LSG/091/091_1_2.nii.gz -add ${PROJDIR}/multiplied_LSG/091/091_1_4.nii.gz ${PROJDIR}/multiplied_LSG/091summed_spheres;

fslmaths ${PROJDIR}/multiplied_LSG/121/121_1_1.nii.gz -add ${PROJDIR}/multiplied_LSG/121/121_2_1.nii.gz ${PROJDIR}/multiplied_LSG/121summed_spheres;

fslmaths ${PROJDIR}/multiplied_LSG/201/201_1_1.nii.gz -add ${PROJDIR}/multiplied_LSG/201/201_1_2.nii.gz ${PROJDIR}/multiplied_LSG/201summed_spheres;

fslmaths ${PROJDIR}/multiplied_LSG/211/211_1_1.nii.gz -add ${PROJDIR}/multiplied_LSG/211/211_1_2.nii.gz -add ${PROJDIR}/multiplied_LSG/211/211_1_4.nii.gz ${PROJDIR}/multiplied_LSG/211summed_spheres; 

fslmaths ${PROJDIR}/multiplied_LSG/241/241_1_1.nii.gz -add ${PROJDIR}/multiplied_LSG/241/241_1_2.nii.gz -add ${PROJDIR}/multiplied_LSG/241/241_1_3.nii.gz -add ${PROJDIR}/multiplied_LSG/241/241_1_4.nii.gz ${PROJDIR}/multiplied_LSG/241summed_spheres;

fslmaths ${PROJDIR}/multiplied_LSG/271/271_1_2.nii.gz -add ${PROJDIR}/multiplied_LSG/271/271_1_3.nii.gz -add ${PROJDIR}/multiplied_LSG/271/271_1_4.nii.gz ${PROJDIR}/multiplied_LSG/271summed_spheres;

fslmaths ${PROJDIR}/multiplied_LSG/281/281_1_1.nii.gz -add ${PROJDIR}/multiplied_LSG/281/281_1_3.nii.gz -add ${PROJDIR}/multiplied_LSG/281/281_2_1.nii.gz -add ${PROJDIR}/multiplied_LSG/281/281_2_5.nii.gz ${PROJDIR}/multiplied_LSG/281summed_spheres;

#fslmaths ${PROJDIR}/multiplied_LSG/291/291_1_3.nii.gz 

fslmaths ${PROJDIR}/multiplied_LSG/300/300_1_2.nii.gz -add ${PROJDIR}/multiplied_LSG/300/300_1_3.nii.gz -add ${PROJDIR}/multiplied_LSG/300/300_1_6.nii.gz -add ${PROJDIR}/multiplied_LSG/300/300_2_1.nii.gz -add ${PROJDIR}/multiplied_LSG/300/300_2_3.nii.gz -add ${PROJDIR}/multiplied_LSG/300/300_2_4.nii.gz -add ${PROJDIR}/multiplied_LSG/300/300_2_6.nii.gz ${PROJDIR}/multiplied_LSG/300summed_spheres;

fslmaths ${PROJDIR}/multiplied_LSG/301/301_1_1.nii.gz -add ${PROJDIR}/multiplied_LSG/301/301_1_2.nii.gz -add ${PROJDIR}/multiplied_LSG/301/301_1_3.nii.gz ${PROJDIR}/multiplied_LSG/301summed_spheres;

fslmaths ${PROJDIR}/multiplied_LSG/321/321_1_1.nii.gz -add ${PROJDIR}/multiplied_LSG/321/321_1_3.nii.gz -add ${PROJDIR}/multiplied_LSG/321/321_1_4.nii.gz -add ${PROJDIR}/multiplied_LSG/321/321_1_5.nii.gz -add ${PROJDIR}/multiplied_LSG/321/321_2_1.nii.gz -add ${PROJDIR}/multiplied_LSG/321/321_2_2.nii.gz -add ${PROJDIR}/multiplied_LSG/321/321_2_3.nii.gz -add ${PROJDIR}/multiplied_LSG/321/321_2_4.nii.gz -add ${PROJDIR}/multiplied_LSG/321/321_2_5.nii.gz ${PROJDIR}/multiplied_LSG/321summed_spheres;

echo " "
echo "COMPLETED ROI: LSG, summed files created"
echo " "
