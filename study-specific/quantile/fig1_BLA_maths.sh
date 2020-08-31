#!/bin/bash

## PRESETS

PROJDIR=/YOUR/PROJECT/DIR/

########### BLA 

#open overlay: sub 41, 1 site
# ${PROJDIR}/multiplied_BLA/041/041_1_4.nii.gz -add
fslmaths ${PROJDIR}/multiplied_BLA/041/041_1_4.nii.gz -bin ${PROJDIR}/multiplied_BLA/041sph_bin;
fslmaths ${PROJDIR}/multiplied_BLA/041sph_bin -mul 1 ${PROJDIR}/multiplied_BLA/041sph_bin;

#open overlay: sub 81, 1 site
# ${PROJDIR}/multiplied_BLA/081/081_1_3.nii.gz -add
fslmaths ${PROJDIR}/multiplied_BLA/081/081_1_3.nii.gz -bin ${PROJDIR}/multiplied_BLA/081sph_bin;
fslmaths ${PROJDIR}/multiplied_BLA/081sph_bin -mul 2 ${PROJDIR}/multiplied_BLA/081sph_bin;

#open overlay: sub 91, 1 site
# ${PROJDIR}/multiplied_BLA/091/091_1_3.nii.gz -add
fslmaths ${PROJDIR}/multiplied_BLA/091/091_1_3.nii.gz -bin ${PROJDIR}/multiplied_BLA/091sph_bin;
fslmaths ${PROJDIR}/multiplied_BLA/091sph_bin -mul 3 ${PROJDIR}/multiplied_BLA/091sph_bin;

#open overlay: sub 111, 3 site
fslmaths ${PROJDIR}/multiplied_BLA/111/111_1_1.nii.gz -add  ${PROJDIR}/multiplied_BLA/111/111_1_2.nii.gz -add  ${PROJDIR}/multiplied_BLA/111/111_1_3.nii.gz ${PROJDIR}/multiplied_BLA/111summed_spheres;
fslmaths ${PROJDIR}/multiplied_BLA/111summed_spheres -bin ${PROJDIR}/multiplied_BLA/111sph_bin;
fslmaths ${PROJDIR}/multiplied_BLA/111sph_bin -mul 4 ${PROJDIR}/multiplied_BLA/111sph_bin;

#open overlay: sub 121, 7 site
fslmaths ${PROJDIR}/multiplied_BLA/121/121_1_1.nii.gz -add  ${PROJDIR}/multiplied_BLA/121/121_1_2.nii.gz -add  ${PROJDIR}/multiplied_BLA/121/121_1_4.nii.gz -add  ${PROJDIR}/multiplied_BLA/121/121_1_5.nii.gz -add  ${PROJDIR}/multiplied_BLA/121/121_2_2.nii.gz -add  ${PROJDIR}/multiplied_BLA/121/121_2_3.nii.gz -add  ${PROJDIR}/multiplied_BLA/121/121_2_4.nii.gz ${PROJDIR}/multiplied_BLA/121summed_spheres;
fslmaths ${PROJDIR}/multiplied_BLA/121summed_spheres -bin ${PROJDIR}/multiplied_BLA/121sph_bin;
fslmaths ${PROJDIR}/multiplied_BLA/121sph_bin -mul 5 ${PROJDIR}/multiplied_BLA/121sph_bin;

#open overlay: sub 201, 3 site
fslmaths ${PROJDIR}/multiplied_BLA/201/201_1_1.nii.gz -add  ${PROJDIR}/multiplied_BLA/201/201_1_2.nii.gz -add  ${PROJDIR}/multiplied_BLA/201/201_1_3.nii.gz -add  ${PROJDIR}/multiplied_BLA/201/201_1_5.nii.gz ${PROJDIR}/multiplied_BLA/201summed_spheres;
fslmaths ${PROJDIR}/multiplied_BLA/201summed_spheres -bin ${PROJDIR}/multiplied_BLA/201sph_bin;
fslmaths ${PROJDIR}/multiplied_BLA/201sph_bin -mul 6 ${PROJDIR}/multiplied_BLA/201sph_bin;

#open overlay: sub 211, 5 site
fslmaths ${PROJDIR}/multiplied_BLA/211/211_1_1.nii.gz -add  ${PROJDIR}/multiplied_BLA/211/211_1_2.nii.gz -add  ${PROJDIR}/multiplied_BLA/211/211_1_3.nii.gz -add  ${PROJDIR}/multiplied_BLA/211/211_1_4.nii.gz -add  ${PROJDIR}/multiplied_BLA/211/211_1_5.nii.gz ${PROJDIR}/multiplied_BLA/211summed_spheres;
fslmaths ${PROJDIR}/multiplied_BLA/211summed_spheres -bin ${PROJDIR}/multiplied_BLA/211sph_bin;
fslmaths ${PROJDIR}/multiplied_BLA/211sph_bin -mul 7 ${PROJDIR}/multiplied_BLA/211sph_bin;

#open overlay: sub 241, 2 site
fslmaths ${PROJDIR}/multiplied_BLA/241/241_1_1.nii.gz -add  ${PROJDIR}/multiplied_BLA/241/241_1_3.nii.gz ${PROJDIR}/multiplied_BLA/241summed_spheres;
fslmaths ${PROJDIR}/multiplied_BLA/241summed_spheres -bin ${PROJDIR}/multiplied_BLA/241sph_bin;
fslmaths ${PROJDIR}/multiplied_BLA/241sph_bin -mul 8 ${PROJDIR}/multiplied_BLA/241sph_bin;

#open overlay: sub 271, 1 site
# ${PROJDIR}/multiplied_BLA/271/271_1_1.nii.gz -add  
fslmaths ${PROJDIR}/multiplied_BLA/271/271_1_1.nii.gz -bin ${PROJDIR}/multiplied_BLA/271sph_bin;
fslmaths ${PROJDIR}/multiplied_BLA/271sph_bin -mul 9 ${PROJDIR}/multiplied_BLA/271sph_bin;

#open overlay: sub 281, 8 site
fslmaths ${PROJDIR}/multiplied_BLA/281/281_1_1.nii.gz -add  ${PROJDIR}/multiplied_BLA/281/281_1_2.nii.gz -add  ${PROJDIR}/multiplied_BLA/281/281_1_3.nii.gz -add  ${PROJDIR}/multiplied_BLA/281/281_2_1.nii.gz -add  ${PROJDIR}/multiplied_BLA/281/281_2_2.nii.gz -add  ${PROJDIR}/multiplied_BLA/281/281_2_3.nii.gz -add  ${PROJDIR}/multiplied_BLA/281/281_2_4.nii.gz -add  ${PROJDIR}/multiplied_BLA/281/281_2_5.nii.gz ${PROJDIR}/multiplied_BLA/281summed_spheres;
fslmaths ${PROJDIR}/multiplied_BLA/281summed_spheres -bin ${PROJDIR}/multiplied_BLA/281sph_bin;
fslmaths ${PROJDIR}/multiplied_BLA/281sph_bin -mul 10 ${PROJDIR}/multiplied_BLA/281sph_bin;

#open overlay: sub 291, 2 site
fslmaths ${PROJDIR}/multiplied_BLA/291/291_1_1.nii.gz -add  ${PROJDIR}/multiplied_BLA/291/291_1_4.nii.gz ${PROJDIR}/multiplied_BLA/291summed_spheres;
fslmaths ${PROJDIR}/multiplied_BLA/291summed_spheres -bin ${PROJDIR}/multiplied_BLA/291sph_bin;
fslmaths ${PROJDIR}/multiplied_BLA/291sph_bin -mul 11 ${PROJDIR}/multiplied_BLA/291sph_bin;

#open overlay: sub 300, 5 site
fslmaths ${PROJDIR}/multiplied_BLA/300/300_1_1.nii.gz -add  ${PROJDIR}/multiplied_BLA/300/300_1_5.nii.gz -add  ${PROJDIR}/multiplied_BLA/300/300_2_2.nii.gz -add  ${PROJDIR}/multiplied_BLA/300/300_2_5.nii.gz -add  ${PROJDIR}/multiplied_BLA/300/300_2_6.nii.gz ${PROJDIR}/multiplied_BLA/300summed_spheres;
fslmaths ${PROJDIR}/multiplied_BLA/300summed_spheres -bin ${PROJDIR}/multiplied_BLA/300sph_bin;
fslmaths ${PROJDIR}/multiplied_BLA/300sph_bin -mul 12 ${PROJDIR}/multiplied_BLA/300sph_bin;

#open overlay: sub 301, 1 site
# ${PROJDIR}/multiplied_BLA/301/301_1_5.nii.gz -add
fslmaths ${PROJDIR}/multiplied_BLA/301/301_1_5.nii.gz -bin ${PROJDIR}/multiplied_BLA/301sph_bin;
fslmaths ${PROJDIR}/multiplied_BLA/301sph_bin -mul 13 ${PROJDIR}/multiplied_BLA/301sph_bin;

#open overlay: sub 321, 6 site
fslmaths ${PROJDIR}/multiplied_BLA/321/321_1_2.nii.gz -add ${PROJDIR}/multiplied_BLA/321/321_1_3.nii.gz -add ${PROJDIR}/multiplied_BLA/321/321_1_4.nii.gz -add ${PROJDIR}/multiplied_BLA/321/321_2_1.nii.gz -add ${PROJDIR}/multiplied_BLA/321/321_2_3.nii.gz -add ${PROJDIR}/multiplied_BLA/321/321_2_5.nii.gz ${PROJDIR}/multiplied_BLA/321summed_spheres;
fslmaths ${PROJDIR}/multiplied_BLA/321summed_spheres -bin ${PROJDIR}/multiplied_BLA/321sph_bin;
fslmaths ${PROJDIR}/multiplied_BLA/321sph_bin -mul 14 ${PROJDIR}/multiplied_BLA/321sph_bin;

echo " "
echo "COMPLETED ROI: BLA, plotting files created, (summed,binarized,then multiplied)"
echo " "


