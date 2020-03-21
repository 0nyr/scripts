#!/bin/bash
cd /home/onyr/Documents/bin_onyr/vocabulary_en_fr
number_of_lines=$1	# $1 is the first argument of the command

# edit the vocabulary_en_fr.txt file by using command voca -e
if [ "-e" = $1 ]
then
	gedit /home/onyr/Documents/bin_onyr/vocabulary_en_fr/res/vocabulary_en_fr.txt
else
	for i in $(seq 1 $number_of_lines)	# WARN: $() NOT ${} !!!
	do
		java Main
	done
	echo ""
fi
