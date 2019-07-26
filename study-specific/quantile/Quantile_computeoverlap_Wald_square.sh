# computeoverlap_Wald_square.sh
# author: MWF, 20190506

# Description: notes for reference when computing Wald Stats and the intersection with respective network mask, can be executed individually or as bash script to reproduce results ---- THIS SCRIPT WAS NEVER DEPLOYED FOR MS

# compute wald statistics from zstat image, squaring each voxel
# ----------------------------------------------------------------#
fslmaths BLA_Int_zStat_exchangeable.nii.gz -square BLA_Int_zStat_exchangeable_Wald.nii.gz;
fslmaths SG_Int_zStat_exchangeable.nii.gz -square SG_Int_zStat_exchangeable_Wald.nii.gz;


# threshold Wald stat image to mean+1.5*SD
# ----------------------------------------------------------------#
fslmaths BLA_WaldStat_Int_zStat_exchangeable.nii.gz -thr 5.097 BLA_WaldStat_Int_zStat_exchangeable_thr_minmax.nii.gz;
fslmaths SG_WaldStat_Int_zStat_exchangeable.nii.gz -thr 5.681 SG_WaldStat_Int_zStat_exchangeable_thr_minmax.nii.gz;  

# use thresholded image to mask the respective network image
# ----------------------------------------------------------------#
fslmaths BLA_WaldStat_Int_zStat_exchangeable_thr_minmax.nii.gz -mas ../../Testing_desworkROIs/aBLAfc_NKIEh_Network_Mask_Z03_96subs.nii.gz netmasked_BLA_WaldStat_Int_zStat_exchangeable_thr_minmax.nii.gz;
fslmaths SG_WaldStat_Int_zStat_exchangeable_thr_minmax.nii.gz -mas ../../Testing_desworkROIs/ListonSG_NKIEh_Network_Mask_Z03_96subs.nii.gz netmasked_SG_WaldStat_Int_zStat_exchangeable_thr_minmax.nii.gz;


# for pushing cluster/voxel info, such as max value, coordinates, or center of gravity to csv
# ----------------------------------------------------------------#
cluster --in=netmasked_SG_WaldStat_Int_zStat_exchangeable_thr_minmax.nii.gz --thresh=1 --mm >> cluster_table_SG_Wald-Networkoverlap.csv;

cluster --in=netmasked_BLA_WaldStat_Int_zStat_exchangeable_thr_minmax.nii.gz --thresh=1 --mm >> cluster_table_BLA_Wald-Networkoverlap.csv;

