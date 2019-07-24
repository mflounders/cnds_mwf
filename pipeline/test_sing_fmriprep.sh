#!/bin/sh

# ------------------------------ HELP ------------------------------ #

if [ "$1" == "--help" ] || [ "$1" == "-h" ] 
then

RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m' 
	
	echo -e "
----------------------------------
test_sing_fmriprep.sh
	
	Description: Wrapper function that submits a subject to fmriprep as an SGE jobs 
	Author: MWF, Last updated: 20190724
	Status: Stable, for testing

	${BLUE}[Template call]${NC}
		./test_sing_fmriprep.sh [subject_list] [settings]

	${BLUE}[Example call]${NC}
		./test_sing_fmriprep.sh sub-C178 '--fs-no-reconall -w /mnt/studies/_misc_fmriprep_work'
	
	${RED}[Arguments]${NC} 
		subject: a character string denoting which must be sub-C178*
		settings: a character string denoting all fmriprep settings of interest, it's recommended designate your work directory* using the -w arguement, anything included in this string will be appended to the end of the standard call 

	${RED}[Output]${NC}
		TBA

*example work directory (stores intermediate files) arguement can be: -w /mnt/studies/_misc_fmriprep_work
----------------------------------
		"
	exit 0
fi

subject=$1
settings=$2

/share/apps/singularity/2.5.1/bin/singularity run --cleanenv -B /data/jux/oathes_group:/mnt /data/jag/cnds/applications/fmriprep/fmriprep-1.4.0.simg /mnt/studies/RF1/MRI/processed/BIDS/bids_dataset /mnt/ --fs-license-file '/mnt/projects/floum/Testing_fmriprep/license.txt' --participant-label $subject $settings
