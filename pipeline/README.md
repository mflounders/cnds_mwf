# Singularity pipeline

## README: Analysis Walkthrough (heudiconv, fmriprep, and XCP - with singularity)
last updated: 20190724 | [Singularity Workflow PPT](https://docs.google.com/presentation/d/1rtNLlrjr8aAFnZ08k3dGDQKSF4N3f_Gm2MQ5hoe5ubg/edit?usp=sharing)

### Initial Set-up:
1. make a directory named data in your home directory, e.g. /home/mflounders/data
2. add singularity to your .bash_profile or use the full path to reference the image on CfN
3. add fmriprep to your .bash_profile or use the full path to reference the image on CfN

### Current container recommendations:
    - singularity.simg path: /share/apps/singularity/2.5.1/bin/singularity
    - fmriprep.simg path: /data/jag/cnds/applications/fmriprep/fmriprep-1.4.0.simg
    - xcp.simg path: /data/jag/cnds/applications/xcpEngine.simg
    - heudiconv.simg path: /data/jag/cnds/applications/heudiconv/heudiconv-0.5.4.simg

_______________________________________________________
## Steps:

1. Run heudiconv
    - wrapper script: `test_sing_heudiconv.sh`
    - for more details, call `test_sing_heudiconv.sh --help`

2. BIDS validate
    - see http://bids-standard.github.io/bids-validator/

3. Run fmriprep
    - wrapper script: `test_sing_fmriprep.sh`
    - for more details, call `test_sing_fmriprep.sh --help`

4. Run XCP
    - wrapper scripts: TBA
    - also, review ~/params/ for cohort and design files

_______________________________________________________
## Issues:

1. how to run xcp struct and func with one call
2. Parallelize fmriprep subject calls via qsub
