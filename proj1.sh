#!/bin/bash



function recurDir { 

	
	for d in "$1"/*
	do
		if [[ ! -r "$1" ]];then
			echo "not readable"
				fi
		
		
		if [[ -d "$d" ]]
			
			then
			
				echo "<ul>" >> $fileName
				echo "<li> $(basename $d) </li>">> $fileName
				recurDir "$d"
				echo "</ul>" >> $fileName
		elif [[ -f "$d" ]]
			then
				echo "<ul>" >> $fileName
				echo "<li> $(basename $d) </li>">> $fileName
				recurDir "$d"
				echo "</ul>" >> $fileName
		fi
	done
	
	
}

if [[ $# -ne 2 ]]; then
	echo "invalid query for arguments"
else
fileName=$2
echo "<!DOCTYPE html>" > $fileName


echo "<ul>" >> $fileName
echo "<li> "${1#*/}" </li>">> $fileName

	recurDir "$1"

echo "</ul>" >> $fileName
fi




