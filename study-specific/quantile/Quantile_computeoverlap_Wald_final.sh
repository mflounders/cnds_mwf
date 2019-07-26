# computeoverlap_Wald.sh
# author: MWF, 20190507

# Description: notes for reference when computing intersection for Wald Stats, can be executed individually or as bash script to reproduce results ----- THIS SCRIPT WAS USED IFOR MANUSCRIPT

# calculate mean and sd 
fslstats BLA_waldInt_exchangeable.nii.gz -M -S # 1.037179 0.901533
fslstats SG_waldInt_exchangeable.nii.gz -M -S # 1.277948 1.362323

#BLA
fslmaths BLA_waldInt_exchangeable.nii.gz -thr 2.3894785 BLA_waldInt_exchangeable_thr_minmax.nii.gz;

fslmaths BLA_waldInt_exchangeable_thr_minmax.nii.gz -mas ../../Testing_desworkROIs/aBLAfc_NKIEh_Network_Mask_Z03_96subs.nii.gz netmasked_BLA_waldInt_exchangeable_thr_minmax.nii.gz;

# SG
fslmaths SG_waldInt_exchangeable.nii.gz -thr 3.3214325 SG_waldInt_exchangeable_thr_minmax.nii.gz;  

fslmaths SG_waldInt_exchangeable_thr_minmax.nii.gz -mas ../../Testing_desworkROIs/ListonSG_NKIEh_Network_Mask_Z03_96subs.nii.gz netmasked_SG_waldInt_exchangeable_thr_minmax.nii.gz;

# for pushing cluster info, like coordinates to csv

cluster --in=netmasked_SG_WaldStat_Int_zStat_exchangeable_thr_minmax.nii.gz --thresh=1 --mm >> cluster_table_SG_Wald-Networkoverlap.csv;

cluster --in=netmasked_BLA_WaldStat_Int_zStat_exchangeable_thr_minmax.nii.gz --thresh=1 --mm >> cluster_table_BLA_Wald-Networkoverlap.csv;

