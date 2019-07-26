#!/bin/bash

# Last updated: MWF, 6/4/19 to run ____

tag=$1

images=$(cd && ls /data/jux/oathes_group/studies/TNI_ZAPR01/MRI/processed/struct/ANTSct/T1s/${tag}/)
echo $images

counter=1
for image in $images; do
	subject=$(echo $image |grep -Eo '[[:digit:]]{3}')
	echo $subject
	/data/jux/oathes_group/studies/TNI_ZAPR01/MRI/processed/struct/ANTSct/antsct_single_scan.sh $subject $counter $tag
	((counter++))
done
