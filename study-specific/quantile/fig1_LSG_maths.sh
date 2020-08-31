## PRESETS

PROJDIR=/YOUR/PROJECT/DIR

############## LSG

#fslmaths ${PROJDIR}/multiplied_LSG/081/081_1_6.nii.gz
fslmaths ${PROJDIR}/multiplied_LSG/081/081_1_6 -bin ${PROJDIR}/multiplied_LSG/081sph_bin;
fslmaths ${PROJDIR}/multiplied_LSG/081sph_bin -mul 2 ${PROJDIR}/multiplied_LSG/081sph_bin; 

fslmaths ${PROJDIR}/multiplied_LSG/091/091_1_2.nii.gz -add ${PROJDIR}/multiplied_LSG/091/091_1_4.nii.gz ${PROJDIR}/multiplied_LSG/091summed_spheres;
fslmaths ${PROJDIR}/multiplied_LSG/091summed_spheres -bin ${PROJDIR}/multiplied_LSG/091sph_bin;
fslmaths ${PROJDIR}/multiplied_LSG/091sph_bin -mul 3 ${PROJDIR}/multiplied_LSG/091sph_bin; 

fslmaths ${PROJDIR}/multiplied_LSG/121/121_1_1.nii.gz -add ${PROJDIR}/multiplied_LSG/121/121_2_1.nii.gz ${PROJDIR}/multiplied_LSG/121summed_spheres;
fslmaths ${PROJDIR}/multiplied_LSG/121summed_spheres -bin ${PROJDIR}/multiplied_LSG/121sph_bin;
fslmaths ${PROJDIR}/multiplied_LSG/121sph_bin -mul 5 ${PROJDIR}/multiplied_LSG/121sph_bin; 

fslmaths ${PROJDIR}/multiplied_LSG/201/201_1_1.nii.gz -add ${PROJDIR}/multiplied_LSG/201/201_1_2.nii.gz ${PROJDIR}/multiplied_LSG/201summed_spheres;
fslmaths ${PROJDIR}/multiplied_LSG/201summed_spheres -bin ${PROJDIR}/multiplied_LSG/201sph_bin;
fslmaths ${PROJDIR}/multiplied_LSG/201sph_bin -mul 6 ${PROJDIR}/multiplied_LSG/201sph_bin; 

fslmaths ${PROJDIR}/multiplied_LSG/211/211_1_1.nii.gz -add ${PROJDIR}/multiplied_LSG/211/211_1_2.nii.gz -add ${PROJDIR}/multiplied_LSG/211/211_1_4.nii.gz ${PROJDIR}/multiplied_LSG/211summed_spheres; 
fslmaths ${PROJDIR}/multiplied_LSG/211summed_spheres -bin ${PROJDIR}/multiplied_LSG/211sph_bin;
fslmaths ${PROJDIR}/multiplied_LSG/211sph_bin -mul 7 ${PROJDIR}/multiplied_LSG/211sph_bin; 

fslmaths ${PROJDIR}/multiplied_LSG/241/241_1_1.nii.gz -add ${PROJDIR}/multiplied_LSG/241/241_1_2.nii.gz -add ${PROJDIR}/multiplied_LSG/241/241_1_3.nii.gz -add ${PROJDIR}/multiplied_LSG/241/241_1_4.nii.gz ${PROJDIR}/multiplied_LSG/241summed_spheres;
fslmaths ${PROJDIR}/multiplied_LSG/241summed_spheres -bin ${PROJDIR}/multiplied_LSG/241sph_bin;
fslmaths ${PROJDIR}/multiplied_LSG/241sph_bin -mul 8 ${PROJDIR}/multiplied_LSG/241sph_bin; 

fslmaths ${PROJDIR}/multiplied_LSG/271/271_1_2.nii.gz -add ${PROJDIR}/multiplied_LSG/271/271_1_3.nii.gz -add ${PROJDIR}/multiplied_LSG/271/271_1_4.nii.gz ${PROJDIR}/multiplied_LSG/271summed_spheres;
fslmaths ${PROJDIR}/multiplied_LSG/271summed_spheres -bin ${PROJDIR}/multiplied_LSG/271sph_bin;
fslmaths ${PROJDIR}/multiplied_LSG/271sph_bin -mul 9 ${PROJDIR}/multiplied_LSG/271sph_bin; 

fslmaths ${PROJDIR}/multiplied_LSG/281/281_1_1.nii.gz -add ${PROJDIR}/multiplied_LSG/281/281_1_3.nii.gz -add ${PROJDIR}/multiplied_LSG/281/281_2_1.nii.gz -add ${PROJDIR}/multiplied_LSG/281/281_2_5.nii.gz ${PROJDIR}/multiplied_LSG/281summed_spheres;
fslmaths ${PROJDIR}/multiplied_LSG/281summed_spheres -bin ${PROJDIR}/multiplied_LSG/281sph_bin;
fslmaths ${PROJDIR}/multiplied_LSG/281sph_bin -mul 10 ${PROJDIR}/multiplied_LSG/281sph_bin; 

#fslmaths ${PROJDIR}/multiplied_LSG/291/291_1_3.nii.gz 
fslmaths ${PROJDIR}/multiplied_LSG/291/291_1_3 -bin ${PROJDIR}/multiplied_LSG/291sph_bin;
fslmaths ${PROJDIR}/multiplied_LSG/291sph_bin -mul 11 ${PROJDIR}/multiplied_LSG/291sph_bin; 

fslmaths ${PROJDIR}/multiplied_LSG/300/300_1_2.nii.gz -add ${PROJDIR}/multiplied_LSG/300/300_1_3.nii.gz -add ${PROJDIR}/multiplied_LSG/300/300_1_6.nii.gz -add ${PROJDIR}/multiplied_LSG/300/300_2_1.nii.gz -add ${PROJDIR}/multiplied_LSG/300/300_2_3.nii.gz -add ${PROJDIR}/multiplied_LSG/300/300_2_4.nii.gz -add ${PROJDIR}/multiplied_LSG/300/300_2_6.nii.gz ${PROJDIR}/multiplied_LSG/300summed_spheres;
fslmaths ${PROJDIR}/multiplied_LSG/300summed_spheres -bin ${PROJDIR}/multiplied_LSG/300sph_bin;
fslmaths ${PROJDIR}/multiplied_LSG/300sph_bin -mul 12 ${PROJDIR}/multiplied_LSG/300sph_bin; 

fslmaths ${PROJDIR}/multiplied_LSG/301/301_1_1.nii.gz -add ${PROJDIR}/multiplied_LSG/301/301_1_2.nii.gz -add ${PROJDIR}/multiplied_LSG/301/301_1_3.nii.gz ${PROJDIR}/multiplied_LSG/301summed_spheres;
fslmaths ${PROJDIR}/multiplied_LSG/301summed_spheres -bin ${PROJDIR}/multiplied_LSG/301sph_bin;
fslmaths ${PROJDIR}/multiplied_LSG/301sph_bin -mul 13 ${PROJDIR}/multiplied_LSG/301sph_bin; 

fslmaths ${PROJDIR}/multiplied_LSG/321/321_1_1.nii.gz -add ${PROJDIR}/multiplied_LSG/321/321_1_3.nii.gz -add ${PROJDIR}/multiplied_LSG/321/321_1_4.nii.gz -add ${PROJDIR}/multiplied_LSG/321/321_1_5.nii.gz -add ${PROJDIR}/multiplied_LSG/321/321_2_1.nii.gz -add ${PROJDIR}/multiplied_LSG/321/321_2_2.nii.gz -add ${PROJDIR}/multiplied_LSG/321/321_2_3.nii.gz -add ${PROJDIR}/multiplied_LSG/321/321_2_4.nii.gz -add ${PROJDIR}/multiplied_LSG/321/321_2_5.nii.gz ${PROJDIR}/multiplied_LSG/321summed_spheres;
fslmaths ${PROJDIR}/multiplied_LSG/321summed_spheres -bin ${PROJDIR}/multiplied_LSG/321sph_bin;
fslmaths ${PROJDIR}/multiplied_LSG/321sph_bin -mul 14 ${PROJDIR}/multiplied_LSG/321sph_bin; 

echo " "
echo "COMPLETED ROI: LSG files created (summed, binarized, multiplied)"
echo " "
