#!/bin/bash

# ------------------------------ HELP ------------------------------ #

if [ "$1" == "--help" ] || [ "$1" == "-h" ] 
then

RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m' 
	
	echo -e "
----------------------------------
test_sing_heudiconv.sh
	
	Description: Wrapper function to test heudiconv with singularity
	Author: VJS and MWF, Last updated: 20190724
	Status: Stable, for testing

	${BLUE}[Template call]${NC}
		./test_sing_heudiconv [subject] [session] [heuristic] [outputdir]

	${BLUE}[Example call]${NC}
		./test_sing_heudiconv RF1_C263 TMS_fMRI1 brainrf1_heuristic_LoConLoHi.py BIDS-C263
	
	${RED}[Arguments]${NC} 
		subject: string, designating the subject of interest
		session: string, designating the session of interset
		heuristic: filename, designating heuristic in current wd, python
		outputdir: directory name, designating output directory of heudiconv

	${RED}[Output]${NC}
		- BIDS-specified dataset, required BIDS validation step before submission to analysis pipelines
		- to validate, submit dataset to http://bids-standard.github.io/bids-validator/

	For heudiconv-specific details, see https://heudiconv.readthedocs.io/en/latest/usage.html
----------------------------------
		"
	exit 0
fi

subject=$1 
session=$2 
heuristic=$3 
outputdir=$4 

/share/apps/singularity/2.5.1/bin/singularity run -B /data/jux/oathes_group/:/mnt -e /data/jag/cnds/applications/heudiconv/heudiconv-0.5.4.simg -d /mnt/studies/RF1/MRI/raw/{subject}/{session}/RawDicoms/*dcm -s $subject -ss $session -f /mnt/studies/RF1/github_clone/brainrf1/heuristics/$heuristic -c dcm2niix -b -o /mnt/sandbox/Testing_heudiconv/$outputdir
