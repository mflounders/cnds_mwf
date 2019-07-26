list="C130 C134 C148 C172 C178 C189 C193 C207 C209 C210 C219 C220 C221 C261 C262 C263 C264 C269 C289 C291 C305 C309 C311 C318 C328 C351 C354 C369 C371 C385 C390 C394 C412 C427 C468 C470 C540 C556 C602 C656 C701 C712 C714 C735 C750 C763 C765 C797 C811 C820 C868 C891 C900 C915 C952 C953 C961 C991 C750_2 P116 P120 P147 P287 P303 P355 P363 P372 P428 P478 P526 P552 P581 P594 P672 P693 P718 P726 P752 P774 P802 P831 P851 P885 P911 P959 P998"
studypath=/data/jux/oathes_group/studies/TNI_ZAPR01/MRI/processed/funct/xcp06/resting_targets/output/targets
scriptpath=/data/jux/oathes_group/projects/floum/scripts

for i_sub in $list ;
	do
	if [ -e ${studypath}/ZAPR01_${i_sub}_AP ]; then
		${scriptpath}/fcz2native_complete.sh $i_sub
	else
		echo "$i_sub subject not found"
	fi
done
