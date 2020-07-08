#!/usr/bin/env python
"""Heuristic for mapping Oathes ZAPR01 Baseline scans into BIDS"""
import os


def create_key(template, outtype=('nii.gz',), annotation_classes=None):
	if template is None or not template:
		raise ValueError('Template must be a valid format string')
	return template, outtype, annotation_classes


# **********************************************************************************
# Baseline session

## Field Map
fmap_se_AP = create_key(
	'sub-{subject}/{session}/fmap/sub-{subject}_{session}_acq-spinecho_dir-AP_epi')
fmap_se_PA = create_key(
	'sub-{subject}/{session}/fmap/sub-{subject}_{session}_acq-spinecho_dir-PA_epi')

## Functional scans
### Resting state
# run1
rest_AP_sbref_run1 = create_key(
	'sub-{subject}/{session}/func/sub-{subject}_{session}_task-rest_acq-TR2s_dir-AP_run-01_sbref')
rest_AP_run1 = create_key(
	'sub-{subject}/{session}/func/sub-{subject}_{session}_task-rest_acq-TR2s_dir-AP_run-01_bold')
rest_PA_sbref_run1 = create_key(
	'sub-{subject}/{session}/func/sub-{subject}_{session}_task-rest_acq-TR2s_dir-PA_run-01_sbref')
rest_PA_run1 = create_key(
	'sub-{subject}/{session}/func/sub-{subject}_{session}_task-rest_acq-TR2s_dir-PA_run-01_bold')

# run2
rest_AP_sbref_run2 = create_key(
	'sub-{subject}/{session}/func/sub-{subject}_{session}_task-rest_acq-TR2s_dir-AP_run-02_sbref')
rest_AP_run2 = create_key(
	'sub-{subject}/{session}/func/sub-{subject}_{session}_task-rest_acq-TR2s_dir-AP_run-02_bold')
rest_PA_sbref_run2 = create_key(
	'sub-{subject}/{session}/func/sub-{subject}_{session}_task-rest_acq-TR2s_dir-PA_run-02_sbref')
rest_PA_run2 = create_key(
	'sub-{subject}/{session}/func/sub-{subject}_{session}_task-rest_acq-TR2s_dir-PA_run-02_bold')

# run3
rest_AP_sbref_run3 = create_key(
	'sub-{subject}/{session}/func/sub-{subject}_{session}_task-rest_acq-TR2s_dir-AP_run-03_sbref')
rest_AP_run3 = create_key(
	'sub-{subject}/{session}/func/sub-{subject}_{session}_task-rest_acq-TR2s_dir-AP_run-03_bold')
rest_PA_sbref_run3 = create_key(
	'sub-{subject}/{session}/func/sub-{subject}_{session}_task-rest_acq-TR2s_dir-PA_run-03_sbref')
rest_PA_run3 = create_key(
	'sub-{subject}/{session}/func/sub-{subject}_{session}_task-rest_acq-TR2s_dir-PA_run-03_bold')

### nback, single run
nback_02 = create_key(
	'sub-{subject}/{session}/func/sub-{subject}_{session}_task-nback02_run-0{item:01d}_bold')


## Anatomical scans
t1w = create_key(
	'sub-{subject}/{session}/anat/sub-{subject}_{session}_acq-MPR_T1w')

## B0 fmaps
fmap_phPA_baseline = create_key(
	'sub-{subject}/{session}/fmap/sub-{subject}_{session}_phasediff')
fmap_magPA_baseline = create_key(
	'sub-{subject}/{session}/fmap/sub-{subject}_{session}_magnitude{item}')

## DTI scan
dti = create_key(
	'sub-{subject}/{session}/dwi/sub-{subject}_{session}_acq-DTIb1000mb2dir64_dwi')

## ASL Scans
mean_perf = create_key(
	'sub-{subject}/{session}/asl/sub-{subject}_{session}_acq-spiralv20pf68accel1d_CBF')
raw_asl = create_key(
	'sub-{subject}/{session}/asl/sub-{subject}_{session}_acq-spiralv20pf68accel1d_asl')
m0 = create_key(
	'sub-{subject}/{session}/asl/sub-{subject}_{session}_acq-spiralv20pf68accel1d_MZeroScan')

# DSI session

## Localizer
#anat_scout_DSI = create_key(
#	'sub-{subject}/{session}/anat/sub-{subject}_{session}_run-0{item:01d}_scout')

## Anatomical scans
t2w = create_key(
	'sub-{subject}/{session}/anat/sub-{subject}_{session}_T2w')

## DSI
dsi_493dir = create_key(
	'sub-{subject}/{session}/dwi/sub-{subject}_{session}_acq-b5000mb3dir493_dwi')
dsi_72dir = create_key(
	'sub-{subject}/{session}/dwi/sub-{subject}_{session}_acq-b5000mb3dir72_dwi')



# **********************************************************************************

def infotodict(seqinfo):
	"""Heuristic evaluator for determining which runs belong where
	allowed template fields - follow python string module:
	item: index within category
	subject: participant id
	seqitem: run number during scanning
	subindex: sub index within group
	"""

	last_run = len(seqinfo)

	info = {

	#Baseline Session
	fmap_se_AP: [],
	fmap_se_PA: [],

	rest_AP_sbref_run1: [],
	rest_AP_run1: [],
	rest_AP_sbref_run2: [],
	rest_AP_run2: [],
	rest_AP_sbref_run3: [],
	rest_AP_run3: [],

	rest_PA_sbref_run1: [],
	rest_PA_run1: [],
	rest_PA_sbref_run2: [],
	rest_PA_run2: [],
	rest_PA_sbref_run3: [],
	rest_PA_run3: [],

	nback_02: [],
	t1w: [],
	fmap_magPA_baseline: [],
	fmap_phPA_baseline: [],
	dti: [],
	mean_perf: [],
	raw_asl: [],
	m0: [],

	#DSI Session
	t2w: [],
	dsi_493dir: [],
	dsi_72dir: []
	}

	# counter
	c_bold_ap=0
	c_bold_pa=0
	c_sbref_ap=0
	c_sbref_pa=0

	for s in seqinfo:
		protocol = s.protocol_name.lower()


	# Baseline session

		if ("SpinEchoFieldMap_AP" in s.protocol_name) or ("fmap_acq-spinecho_dir-AP" in s.protocol_name):
			info[fmap_se_AP].append(s.series_id)
		
		elif ("SpinEchoFieldMap_PA" in s.protocol_name) or ("fmap_acq-spinecho_dir-PA" in s.protocol_name):
			info[fmap_se_PA].append(s.series_id)

		elif ("T1w_MPR" in s.protocol_name) or ("anat_acq-mpr_T1w" in s.protocol_name):
			info[t1w].append(s.series_id)
		elif ("BOLD_02_nback_348" in s.protocol_name) or ("func_task-nback02_run" in s.protocol_name):
			info[nback_02].append(s.series_id)
		elif ("DTI_64dir_MB2" in s.protocol_name) or ("dwi_acq-multiband2dir64_dwi" in s.protocol_name):
			info[dti].append(s.series_id)
			
		#if s.series_description.endswith('_M0'):
			#info[m0].append(s.series_id) #Removed conversion of MZero to nifti. With current versions of
			#dcm2niix, the M0 will not convert correctly (one slice is deleted, resulting in errors). Error
			#is reproduced across different studies using this M0 protocol- not fixed for now. MZero not
			#used in processing so no conversion to nifti needed.
		
		elif s.series_description.endswith('_ASL'):
			info[raw_asl].append(s.series_id)
		elif s.series_description.endswith('_MeanPerf'):
			info[mean_perf].append(s.series_id)
		elif s.protocol_name.startswith('B0map') or "fmap_acq-magphase" in s.protocol_name:
			if "P" in s.image_type:
				info[fmap_phPA_baseline].append(s.series_id)
			elif "M" in s.image_type:
				info[fmap_magPA_baseline].append(s.series_id)

		elif ("DTI_64dir_MB2" in s.protocol_name) or ("dwi_acq-multiband2dir64_dwi" in s.protocol_name):
			info[dti].append(s.series_id)

		elif s.series_description.endswith('_SBRef'):
			if "AP" in s.series_description:
				c_sbref_ap+=1
				if c_sbref_ap==1:
					info[rest_AP_sbref_run1].append(s.series_id)
				elif c_sbref_ap==2:
					info[rest_AP_sbref_run2].append(s.series_id)
				elif c_sbref_ap==3:
					info[rest_AP_sbref_run3].append(s.series_id)
			
			elif "PA" in s.series_description:
				c_sbref_pa+=1
				if c_sbref_pa==1:
					info[rest_PA_sbref_run1].append(s.series_id)
				elif c_sbref_pa==2:
					info[rest_PA_sbref_run2].append(s.series_id)
				elif c_sbref_pa==3:
					info[rest_PA_sbref_run3].append(s.series_id)		


		elif ("rfMRI_REST_AP" in s.protocol_name) or ("func_task-rest_dir-AP_bold" == s.series_description):
			c_bold_ap+=1
			if c_bold_ap==1:
				info[rest_AP_run1].append(s.series_id)
			elif c_bold_ap==2:
				info[rest_AP_run2].append(s.series_id)
			elif c_bold_ap==3:
				info[rest_AP_run3].append(s.series_id)		
			
			
		elif ("rfMRI_REST_PA" in s.protocol_name) or ("func_task-rest_dir-PA_bold" == s.series_description):
			c_bold_pa+=1
			if c_bold_pa==1:
				info[rest_PA_run1].append(s.series_id)
			elif c_bold_pa==2:
				info[rest_PA_run2].append(s.series_id)
			elif c_bold_pa==3:
				info[rest_PA_run3].append(s.series_id)
			
			
	# DSI session
		elif "t2w_space_0.9mm" in protocol:
			info[t2w].append(s.series_id)
		elif "dsi_493dir_b5000" in protocol:
			info[dsi_493dir].append(s.series_id)
		elif "dsi_64dir_b5000" in protocol:
			info[dsi_72dir].append(s.series_id)

	return info

#IntendedFor section does not work for heudiconv, only heudiconv-fw
IntendedFor = {

	fmap_phPA_baseline: [
		'{session}/dwi/sub-{subject}_{session}_acq-DTIb1000mb2dir64_dwi.nii.gz',
		'{session}/func/sub-{subject}_{session}_task-nback02_run-01_bold.nii.gz'],

	fmap_magPA_baseline: [
		'{session}/dwi/sub-{subject}_{session}_acq-DTIb1000mb2dir64_dwi.nii.gz',
		'{session}/func/sub-{subject}_{session}_task-nback02_run-01_bold.nii.gz'],
	
	rest_AP_sbref_run1: [
		'{session}/func/sub-{subject}_{session}_task-rest_acq-TR2s_dir-AP_run-01_sbref.nii.gz'],
	rest_AP_sbref_run2: [
		'{session}/func/sub-{subject}_{session}_task-rest_acq-TR2s_dir-AP_run-02_sbref.nii.gz'],
	rest_AP_sbref_run3: [
		'{session}/func/sub-{subject}_{session}_task-rest_acq-TR2s_dir-AP_run-03_sbref.nii.gz'],
		
		
	rest_PA_sbref_run1: [
		'{session}/func/sub-{subject}_{session}_task-rest_acq-TR2s_dir-PA_run-01_sbref.nii.gz'],
	rest_PA_sbref_run2: [
		'{session}/func/sub-{subject}_{session}_task-rest_acq-TR2s_dir-PA_run-02_sbref.nii.gz'],
	rest_PA_sbref_run3: [
		'{session}/func/sub-{subject}_{session}_task-rest_acq-TR2s_dir-PA_run-03_sbref.nii.gz'],
		
	rest_AP_run1: [
		'{session}/func/sub-{subject}_{session}_task-rest_acq-TR2s_dir-AP_run-01_bold.nii.gz'],
	rest_AP_run2: [
		'{session}/func/sub-{subject}_{session}_task-rest_acq-TR2s_dir-AP_run-02_bold.nii.gz'],
	rest_AP_run3: [
		'{session}/func/sub-{subject}_{session}_task-rest_acq-TR2s_dir-AP_run-03_bold.nii.gz'],
		
	rest_PA_run1: [
		'{session}/func/sub-{subject}_{session}_task-rest_acq-TR2s_dir-PA_run-01_bold.nii.gz'],
	rest_PA_run2: [
		'{session}/func/sub-{subject}_{session}_task-rest_acq-TR2s_dir-PA_run-02_bold.nii.gz'],
	rest_PA_run3: [
		'{session}/func/sub-{subject}_{session}_task-rest_acq-TR2s_dir-PA_run-03_bold.nii.gz'],

	m0: [
		'{session}/asl/sub-{subject}_{session}_acq-spiralv20pf68accel1d_asl.nii.gz'],
}

#MetadataExtras does not work for heudiconv, only for heudiconv-fw
MetadataExtras = {

	fmap_phPA_baseline: {
		"EchoTime1": 0.00412,
		"EchoTime2": 0.00658
	},
}
