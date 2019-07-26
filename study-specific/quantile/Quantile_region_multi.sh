#!/bin/bash

# this script applies fslmaths to create multiplied versions of Freesurfer regional masks for visualization in the Quantile paper

#amit_LBLA
fslmaths /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_ifg_combined -mul -0.0875767825454545 /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_ifg_combined_v4_noPain_multipliedBLA_amit_LBLA_wCoarseLabelsNoPain;
fslmaths /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_mfg -mul 0.0582247948125 /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_mfg_v4_noPain_multipliedBLA_amit_LBLA_wCoarseLabelsNoPain;
fslmaths /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_pcg -mul -0.0937055977777778 /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_pcg_v4_noPain_multipliedBLA_amit_LBLA_wCoarseLabelsNoPain;
fslmaths /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_sfg -mul 0.0902413195833333 /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_sfg_v4_noPain_multipliedBLA_amit_LBLA_wCoarseLabelsNoPain;

echo
echo " amit LBLA * ifg/mfg/pcg/sfg COMPLETED "
echo

#BLA30
fslmaths /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_ifg_combined -mul -0.0496333883636364 /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_ifg_combined_v4_noPain_multipliedBLA_Mask_Lamyg_BLA30_wCoarseLabelsNoPain;
fslmaths /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_mfg -mul 0.0526403168125 /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_mfg_v4_noPain_multipliedBLA_Mask_Lamyg_BLA30_wCoarseLabelsNoPain;
fslmaths /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_pcg -mul -0.0961975105555555 /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_pcg_v4_noPain_multipliedBLA_Mask_Lamyg_BLA30_wCoarseLabelsNoPain;
fslmaths /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_sfg -mul 0.0816075573333333 /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_sfg_v4_noPain_multipliedBLA_Mask_Lamyg_BLA30_wCoarseLabelsNoPain;

echo
echo " BLA30 * ifg/mfg/pcg/sfg COMPLETED "
echo

#CMA30
fslmaths /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_ifg_combined -mul 0.116194884636364 /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_ifg_combined_v4_noPain_multipliedBLA_Mask_Lamyg_CMA30_wCoarseLabelsNoPain;
fslmaths /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_mfg -mul 0.025105162 /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_mfg_v4_noPain_multipliedBLA_Mask_Lamyg_CMA30_wCoarseLabelsNoPain;
fslmaths /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_pcg -mul -0.0452459242222222 /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_pcg_v4_noPain_multipliedBLA_Mask_Lamyg_CMA30_wCoarseLabelsNoPain;
fslmaths /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_sfg -mul 0.0885655518333333 /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_sfg_v4_noPain_multipliedBLA_Mask_Lamyg_CMA30_wCoarseLabelsNoPain;

echo
echo " CMA30 * ifg/mfg/pcg/sfg COMPLETED "
echo

#SF30
fslmaths /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_ifg_combined -mul 0.103362282909091 /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_ifg_combined_v4_noPain_multipliedBLA_Mask_Lamyg_SF30_wCoarseLabelsNoPain;
fslmaths /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_mfg -mul 0.0709540569375 /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_mfg_v4_noPain_multipliedBLA_Mask_Lamyg_SF30_wCoarseLabelsNoPain;
fslmaths /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_pcg -mul 0.00809602266666667 /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_pcg_v4_noPain_multipliedBLA_Mask_Lamyg_SF30_wCoarseLabelsNoPain;
fslmaths /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_sfg -mul 0.05451440425 /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_sfg_v4_noPain_multipliedBLA_Mask_Lamyg_SF30_wCoarseLabelsNoPain;

echo
echo " SF30 * ifg/mfg/pcg/sfg COMPLETED "
echo

#SG_Liston_sgACCgm
fslmaths /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_ifg_combined -mul -0.103392302111111 /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_ifg_combined_v4_noPain_multipliedSG_Liston_sgACCgm_wCoarseLabelsNoPain;
fslmaths /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_mfg -mul -0.0359315402631579 /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_mfg_v4_noPain_multipliedSG_Liston_sgACCgm_wCoarseLabelsNoPain;
fslmaths /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_pcg -mul -0.1183706232 /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_pcg_v4_noPain_multipliedSG_Liston_sgACCgm_wCoarseLabelsNoPain;
fslmaths /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_sfg -mul -0.04680408075 /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_sfg_v4_noPain_multipliedSG_Liston_sgACCgm_wCoarseLabelsNoPain;

echo
echo " SG Liston * ifg/mfg/pcg/sfg COMPLETED "
echo

#SG_ListonSG_NKIEh_Network_Mask_Z03_96subs
fslmaths /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_ifg_combined -mul -0.0608986456666667 /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_ifg_combined_v4_noPain_multipliedSG_ListonSG_NKIEh_Network_Mask_Z03_96subs_wCoarseLabelsNoPain;
fslmaths /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_mfg -mul -0.0953298034210526 /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_mfg_v4_noPain_multipliedSG_ListonSG_NKIEh_Network_Mask_Z03_96subs_wCoarseLabelsNoPain;
fslmaths /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_pcg -mul 0.008888481 /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_pcg_v4_noPain_multipliedSG_ListonSG_NKIEh_Network_Mask_Z03_96subs_wCoarseLabelsNoPain;
fslmaths /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_sfg -mul -0.0267983651666667 /data/jux/oathes_group/projects/floum/Quantile/FS_region/MNI152_1mm_FS_lh_sfg_v4_noPain_multipliedSG_ListonSG_NKIEh_Network_Mask_Z03_96subs_wCoarseLabelsNoPain;

echo
echo " ListonSG03 Network * ifg/mfg/pcg/sfg COMPLETED "
echo




