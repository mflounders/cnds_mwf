#!/bin/bash

# Notes:
# This script should be run from ~/data/jux/oathes_group/projects/floum/Quantile directory

cd /data/jux/oathes_group/projects/floum/Quantile

#### SG03

## corrected list of commands

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj081_SG3_sesh1_site6_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.411054 multiplied_SG03/081/081_1_6.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj091_YeoPPfc_sesh1_site2_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.743837 multiplied_SG03/091/091_1_2.nii.gz; fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj091_SGatlasHCP_sesh1_site4_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.407935 multiplied_SG03/091/091_1_4.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj121_SGatlas_sesh1_site1_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.244484 multiplied_SG03/121/121_1_1.nii.gz; fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj121_BA9_2_sesh2_site1_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.254711 multiplied_SG03/121/121_2_1.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj201_BLAatlas_sesh1_site1_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.516162 multiplied_SG03/201/201_1_1.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj201_SGatlas_sesh1_site2_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.781133 multiplied_SG03/201/201_1_2.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj211_SGneg1_sesh1_site1_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.453372 multiplied_SG03/211/211_1_1.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj211_BLApos1_sesh1_site2_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.139251 multiplied_SG03/211/211_1_2.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj211_BLAneg1_sesh1_site4_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.282315 multiplied_SG03/211/211_1_4.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj241_BLA1_sesh1_site1_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.391015 multiplied_SG03/241/241_1_1.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj241_SG1_sesh1_site2_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.348088 multiplied_SG03/241/241_1_2.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj241_BA46_sesh1_site3_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.365267 multiplied_SG03/241/241_1_3.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj241_SGatlas_sesh1_site4_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.363589 multiplied_SG03/241/241_1_4.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj271_SGatlasHCP_sesh1_site2_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.287275 multiplied_SG03/271/271_1_2.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj271_BLAatlas_sesh1_site3_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.63316 multiplied_SG03/271/271_1_3.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj271_SG1_sesh1_site4_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.621327 multiplied_SG03/271/271_1_4.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj281_SG1_sesh1_site1_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.488859 multiplied_SG03/281/281_1_1.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj281_SG2_sesh1_site3_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.489764 multiplied_SG03/281/281_1_3.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj281_BA9_sesh2_site1_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.545895 multiplied_SG03/281/281_2_1.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj281_rSG_sesh2_site5_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.45736 multiplied_SG03/281/281_2_5.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj291_SG2_sesh1_site3_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.490966 multiplied_SG03/291/291_1_3.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj300_SG1_sesh1_site2_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.161859 multiplied_SG03/300/300_1_2.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj300_BLAnegXCP_sesh1_site3_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.22459 multiplied_SG03/300/300_1_3.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj300_SG2negXCP_sesh1_site6_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.527451 multiplied_SG03/300/300_1_6.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj300_aLSGfc_1_sesh2_site1_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.543711 multiplied_SG03/300/300_2_1.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj300_FitzAtlas_3_sesh2_site3_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.502617 multiplied_SG03/300/300_2_3.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj300_BA9_4_sesh2_site4_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.49986 multiplied_SG03/300/300_2_4.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj300_BA46_6_sesh2_site6_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.392886 multiplied_SG03/300/300_2_6.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj301_BLAfc_1_sesh1_site1_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.495006 multiplied_SG03/301/301_1_1.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj301_LSGfc_2_sesh1_site2_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.632246 multiplied_SG03/301/301_1_2.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj301_BLAfc_3_sesh1_site3_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.309914 multiplied_SG03/301/301_1_3.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj301_YeoPPfc_4_sesh1_site4_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.582407 multiplied_SG03/301/301_1_4.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj301_LSGfc_5_sesh1_site5_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.321191 multiplied_SG03/301/301_1_5.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj321_SG_1_sesh1_site1_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.384133 multiplied_SG03/321/321_1_1.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj321_SG_3_sesh1_site3_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.69512 multiplied_SG03/321/321_1_3.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj321_BLA_4_sesh1_site4_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.451747 multiplied_SG03/321/321_1_4.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj321_Yeo_5_sesh1_site5_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.189418 multiplied_SG03/321/321_1_5.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj321_rBLA1_sesh2_site1_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.686031 multiplied_SG03/321/321_2_1.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj321_BA9_2_sesh2_site2_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.491636 multiplied_SG03/321/321_2_2.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj321_BA46_3_sesh2_site3_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.336092 multiplied_SG03/321/321_2_3.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj321_rSG_4_sesh2_site4_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.576532 multiplied_SG03/321/321_2_4.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj321_SG_5_sesh2_site5_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.341835 multiplied_SG03/321/321_2_5.nii.gz;

##

echo " "
echo "COMPLETED ROI: SG03"
echo " "

### BLA03

## corrected list of commands

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj041_SGatlas_sesh1_site4_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.477436 multiplied_BLA03/041/041_1_4.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj081_BLA2_sesh1_site3_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.684796 multiplied_BLA03/081/081_1_3.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj091_BA46_sesh1_site3_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.451168 multiplied_BLA03/091/091_1_3.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj111_SGatlas_sesh1_site1_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.488386 multiplied_BLA03/111/111_1_1.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj111_SG1_sesh1_site2_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.574664 multiplied_BLA03/111/111_1_2.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj111_BLA1_sesh1_site3_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.471778 multiplied_BLA03/111/111_1_3.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj121_SGatlas_sesh1_site1_tmsTargROI_5mm_mni1mm.nii.gz -mul 0.451597 multiplied_BLA03/121/121_1_1.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj121_BLA1_sesh1_site2_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.676191 multiplied_BLA03/121/121_1_2.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj121_BLA2_sesh1_site4_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.505922 multiplied_BLA03/121/121_1_4.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj121_SG2_sesh1_site5_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.48743 multiplied_BLA03/121/121_1_5.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj121_BA46_3_sesh2_site2_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.533732 multiplied_BLA03/121/121_2_2.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj121_rSG_4_sesh2_site3_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.477897 multiplied_BLA03/121/121_2_3.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj121_rBLA_5_sesh2_site4_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.488859 multiplied_BLA03/121/121_2_4.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj201_BLAatlas_sesh1_site1_tmsTargROI_5mm_mni1mm.nii.gz -mul 0.47657 multiplied_BLA03/201/201_1_1.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj201_SGatlas_sesh1_site2_tmsTargROI_5mm_mni1mm.nii.gz -mul 0.582212 multiplied_BLA03/201/201_1_2.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj201_BLA1_sesh1_site3_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.520438 multiplied_BLA03/201/201_1_3.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj201_BLA2_sesh1_site5_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.455822 multiplied_BLA03/201/201_1_5.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj211_SGneg1_sesh1_site1_tmsTargROI_5mm_mni1mm.nii.gz -mul 0.543672 multiplied_BLA03/211/211_1_1.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj211_BLApos1_sesh1_site2_tmsTargROI_5mm_mni1mm.nii.gz -mul 0.55182 multiplied_BLA03/211/211_1_2.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj211_SGpos1_sesh1_site3_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.358683 multiplied_BLA03/211/211_1_3.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj211_BLAneg1_sesh1_site4_tmsTargROI_5mm_mni1mm.nii.gz -mul 0.459047 multiplied_BLA03/211/211_1_4.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj211_SGatlas_sesh1_site5_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.572597 multiplied_BLA03/211/211_1_5.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj241_BLA1_sesh1_site1_tmsTargROI_5mm_mni1mm.nii.gz -mul 0.501356 multiplied_BLA03/241/241_1_1.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj241_BA46_sesh1_site3_tmsTargROI_5mm_mni1mm.nii.gz -mul 0.549763 multiplied_BLA03/241/241_1_3.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj271_BLA1neg_sesh1_site1_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.536159 multiplied_BLA03/271/271_1_1.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj281_SG1_sesh1_site1_tmsTargROI_5mm_mni1mm.nii.gz -mul 0.523712 multiplied_BLA03/281/281_1_1.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj281_YeoPPfc_sesh1_site2_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.450306 multiplied_BLA03/281/281_1_2.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj281_SG2_sesh1_site3_tmsTargROI_5mm_mni1mm.nii.gz -mul 0.449045 multiplied_BLA03/281/281_1_3.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj281_BA9_sesh2_site1_tmsTargROI_5mm_mni1mm.nii.gz -mul 0.396275 multiplied_BLA03/281/281_2_1.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj281_rBLA_sesh2_site2_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.474912 multiplied_BLA03/281/281_2_2.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj281_BA46_sesh2_site3_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.601435 multiplied_BLA03/281/281_2_3.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj281_YeoSpot2_sesh2_site4_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.450306 multiplied_BLA03/281/281_2_4.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj281_rSG_sesh2_site5_tmsTargROI_5mm_mni1mm.nii.gz -mul 0.547665 multiplied_BLA03/281/281_2_5.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj291_SG1_sesh1_site1_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.428697 multiplied_BLA03/291/291_1_1.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj291_BLA1_sesh1_site4_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.465944 multiplied_BLA03/291/291_1_4.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj300_BLA1_sesh1_site1_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.400494 multiplied_BLA03/300/300_1_1.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj300_YeoPPfc_sesh1_site5_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.528431 multiplied_BLA03/300/300_1_5.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj300_aBLAfc_2_sesh2_site2_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.50748 multiplied_BLA03/300/300_2_2.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj300_aYeoFC_5_sesh2_site5_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.455473 multiplied_BLA03/300/300_2_5.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj300_BA46_6_sesh2_site6_tmsTargROI_5mm_mni1mm.nii.gz -mul 0.484857 multiplied_BLA03/300/300_2_6.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj301_LSGfc_5_sesh1_site5_tmsTargROI_5mm_mni1mm.nii.gz -mul 0.437929 multiplied_BLA03/301/301_1_5.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj321_BLA_2_sesh1_site2_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.574894 multiplied_BLA03/321/321_1_2.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj321_SG_3_sesh1_site3_tmsTargROI_5mm_mni1mm.nii.gz -mul 0.527572 multiplied_BLA03/321/321_1_3.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj321_BLA_4_sesh1_site4_tmsTargROI_5mm_mni1mm.nii.gz -mul 0.501819 multiplied_BLA03/321/321_1_4.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj321_rBLA1_sesh2_site1_tmsTargROI_5mm_mni1mm.nii.gz -mul 0.519048 multiplied_BLA03/321/321_2_1.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj321_BA46_3_sesh2_site3_tmsTargROI_5mm_mni1mm.nii.gz -mul 0.649263 multiplied_BLA03/321/321_2_3.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj321_SG_5_sesh2_site5_tmsTargROI_5mm_mni1mm.nii.gz -mul 0.58722 multiplied_BLA03/321/321_2_5.nii.gz;

##

echo " "
echo "COMPLETED ROI: BLA03"
echo " "

### BLA

## corrected list of commands

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj041_SGatlas_sesh1_site4_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.227138 multiplied_BLA/041/041_1_4.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj081_BLA2_sesh1_site3_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.714749 multiplied_BLA/081/081_1_3.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj091_BA46_sesh1_site3_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.308748 multiplied_BLA/091/091_1_3.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj111_SGatlas_sesh1_site1_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.455428 multiplied_BLA/111/111_1_1.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj111_SG1_sesh1_site2_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.479902 multiplied_BLA/111/111_1_2.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj111_BLA1_sesh1_site3_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.246291 multiplied_BLA/111/111_1_3.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj121_SGatlas_sesh1_site1_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.444147 multiplied_BLA/121/121_1_1.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj121_BLA1_sesh1_site2_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.676103 multiplied_BLA/121/121_1_2.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj121_BLA2_sesh1_site4_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.67223 multiplied_BLA/121/121_1_4.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj121_SG2_sesh1_site5_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.559805 multiplied_BLA/121/121_1_5.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj121_BA46_3_sesh2_site2_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.501416 multiplied_BLA/121/121_2_2.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj121_rSG_4_sesh2_site3_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.624602 multiplied_BLA/121/121_2_3.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj121_rBLA_5_sesh2_site4_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.249863 multiplied_BLA/121/121_2_4.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj201_BLAatlas_sesh1_site1_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.248308 multiplied_BLA/201/201_1_1.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj201_SGatlas_sesh1_site2_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.340876 multiplied_BLA/201/201_1_2.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj201_BLA1_sesh1_site3_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.279266 multiplied_BLA/201/201_1_3.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj201_BLA2_sesh1_site5_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.256114 multiplied_BLA/201/201_1_5.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj211_SGneg1_sesh1_site1_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.42824 multiplied_BLA/211/211_1_1.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj211_BLApos1_sesh1_site2_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.770148 multiplied_BLA/211/211_1_2.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj211_SGpos1_sesh1_site3_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.534543 multiplied_BLA/211/211_1_3.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj211_BLAneg1_sesh1_site4_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.655224 multiplied_BLA/211/211_1_4.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj211_SGatlas_sesh1_site5_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.70696 multiplied_BLA/211/211_1_5.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj241_BLA1_sesh1_site1_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.316486 multiplied_BLA/241/241_1_1.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj241_BA46_sesh1_site3_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.628457 multiplied_BLA/241/241_1_3.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj271_BLA1neg_sesh1_site1_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.6078 multiplied_BLA/271/271_1_1.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj281_SG1_sesh1_site1_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.802849 multiplied_BLA/281/281_1_1.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj281_YeoPPfc_sesh1_site2_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.27306 multiplied_BLA/281/281_1_2.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj281_SG2_sesh1_site3_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.521897 multiplied_BLA/281/281_1_3.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj281_BA9_sesh2_site1_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.134228 multiplied_BLA/281/281_2_1.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj281_rBLA_sesh2_site2_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.414448 multiplied_BLA/281/281_2_2.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj281_BA46_sesh2_site3_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.608603 multiplied_BLA/281/281_2_3.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj281_YeoSpot2_sesh2_site4_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.27306 multiplied_BLA/281/281_2_4.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj281_rSG_sesh2_site5_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.740575 multiplied_BLA/281/281_2_5.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj291_SG1_sesh1_site1_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.654423 multiplied_BLA/291/291_1_1.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj291_BLA1_sesh1_site4_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.481569 multiplied_BLA/291/291_1_4.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj300_BLA1_sesh1_site1_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.21242 multiplied_BLA/300/300_1_1.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj300_YeoPPfc_sesh1_site5_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.844389 multiplied_BLA/300/300_1_5.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj300_aBLAfc_2_sesh2_site2_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.37696 multiplied_BLA/300/300_2_2.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj300_aYeoFC_5_sesh2_site5_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.262042 multiplied_BLA/300/300_2_5.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj300_BA46_6_sesh2_site6_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.695425 multiplied_BLA/300/300_2_6.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj301_LSGfc_5_sesh1_site5_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.56451 multiplied_BLA/301/301_1_5.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj321_BLA_2_sesh1_site2_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.412777 multiplied_BLA/321/321_1_2.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj321_SG_3_sesh1_site3_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.704739 multiplied_BLA/321/321_1_3.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj321_BLA_4_sesh1_site4_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.563133 multiplied_BLA/321/321_1_4.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj321_rBLA1_sesh2_site1_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.679819 multiplied_BLA/321/321_2_1.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj321_BA46_3_sesh2_site3_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.764663 multiplied_BLA/321/321_2_3.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj321_SG_5_sesh2_site5_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.594294 multiplied_BLA/321/321_2_5.nii.gz;

##

echo " "
echo "COMPLETED ROI: BLA"
echo " "

### LSG

## completed list of commands 

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj081_SG3_sesh1_site6_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.547147 multiplied_LSG/081/081_1_6.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj091_YeoPPfc_sesh1_site2_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.891116 multiplied_LSG/091/091_1_2.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj091_SGatlasHCP_sesh1_site4_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.621553 multiplied_LSG/091/091_1_4.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj121_SGatlas_sesh1_site1_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.280458 multiplied_LSG/121/121_1_1.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj121_BA9_2_sesh2_site1_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.325061 multiplied_LSG/121/121_2_1.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj201_BLAatlas_sesh1_site1_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.46803 multiplied_LSG/201/201_1_1.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj201_SGatlas_sesh1_site2_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.952824 multiplied_LSG/201/201_1_2.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj211_SGneg1_sesh1_site1_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.139113 multiplied_LSG/211/211_1_1.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj211_BLApos1_sesh1_site2_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.166822 multiplied_LSG/211/211_1_2.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj211_BLAneg1_sesh1_site4_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.412186 multiplied_LSG/211/211_1_4.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj241_BLA1_sesh1_site1_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.115289 multiplied_LSG/241/241_1_1.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj241_SG1_sesh1_site2_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.546616 multiplied_LSG/241/241_1_2.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj241_BA46_sesh1_site3_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.527506 multiplied_LSG/241/241_1_3.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj241_SGatlas_sesh1_site4_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.478629 multiplied_LSG/241/241_1_4.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj271_SGatlasHCP_sesh1_site2_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.33852 multiplied_LSG/271/271_1_2.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj271_BLAatlas_sesh1_site3_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.64595 multiplied_LSG/271/271_1_3.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj271_SG1_sesh1_site4_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.456357 multiplied_LSG/271/271_1_4.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj281_SG1_sesh1_site1_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.246884 multiplied_LSG/281/281_1_1.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj281_SG2_sesh1_site3_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.250354 multiplied_LSG/281/281_1_3.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj281_BA9_sesh2_site1_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.146003 multiplied_LSG/281/281_2_1.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj281_rSG_sesh2_site5_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.382072 multiplied_LSG/281/281_2_5.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj291_SG2_sesh1_site3_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.254679 multiplied_LSG/291/291_1_3.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj300_SG1_sesh1_site2_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.351022 multiplied_LSG/300/300_1_2.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj300_BLAnegXCP_sesh1_site3_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.447083 multiplied_LSG/300/300_1_3.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj300_SG2negXCP_sesh1_site6_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.133999 multiplied_LSG/300/300_1_6.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj300_aLSGfc_1_sesh2_site1_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.809103 multiplied_LSG/300/300_2_1.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj300_FitzAtlas_3_sesh2_site3_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.336042 multiplied_LSG/300/300_2_3.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj300_BA9_4_sesh2_site4_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.440569 multiplied_LSG/300/300_2_4.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj300_BA46_6_sesh2_site6_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.075942 multiplied_LSG/300/300_2_6.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj301_BLAfc_1_sesh1_site1_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.210849 multiplied_LSG/301/301_1_1.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj301_LSGfc_2_sesh1_site2_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.84923 multiplied_LSG/301/301_1_2.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj301_BLAfc_3_sesh1_site3_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.36886 multiplied_LSG/301/301_1_3.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj301_YeoPPfc_4_sesh1_site4_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.537096 multiplied_LSG/301/301_1_4.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj301_LSGfc_5_sesh1_site5_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.507043 multiplied_LSG/301/301_1_5.nii.gz;

fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj321_SG_1_sesh1_site1_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.623862 multiplied_LSG/321/321_1_1.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj321_SG_3_sesh1_site3_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.856111 multiplied_LSG/321/321_1_3.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj321_BLA_4_sesh1_site4_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.089065 multiplied_LSG/321/321_1_4.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj321_Yeo_5_sesh1_site5_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.12378 multiplied_LSG/321/321_1_5.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj321_rBLA1_sesh2_site1_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.773896 multiplied_LSG/321/321_2_1.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj321_BA9_2_sesh2_site2_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.825582 multiplied_LSG/321/321_2_2.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj321_BA46_3_sesh2_site3_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.602039 multiplied_LSG/321/321_2_3.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj321_rSG_4_sesh2_site4_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.527304 multiplied_LSG/321/321_2_4.nii.gz;
fslmaths /data/jag/cnds/jaredz/pilot_TMSfMRI/ROIs/standard/tmsTargSites/mni2mm/5mmROIs/Subj321_SG_5_sesh2_site5_tmsTargROI_5mm_mni1mm.nii.gz  -mul 0.200761 multiplied_LSG/321/321_2_5.nii.gz;

##

echo " "
echo "COMPLETED ROI: LSG"
echo " "


