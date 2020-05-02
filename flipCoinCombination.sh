#!/bin/bash
hcount=0
tcount=0
declare -A singlet
singlet=([H]=0 [T]=0)
echo "Wecome to FlipCoin Combination Program"
function singletheadTailGenerate(){
	rn=$((RANDOM%2))
       	if [ $rn -eq 0 ]
       	then
              	tcount=$(($tcount+1))
       	else
               	hcount=$(($hcount+1))
       	fi
}

function singletCombination(){	
	while [ $hcount -ne 21 -a $tcount -ne 21 ]
	do
		singletheadTailGenerate
	done
	singlet[H]=$hcount
	singlet[T]=$tcount
}
singletCombination
echo "${singlet[@]} total = $((singlet[H] + singlet[T]))"
echo "H % = $(( (singlet[H] * 100 )/ (singlet[H] + singlet[T]) ))"
echo "T % = $(( (singlet[T] * 100 )/ (singlet[H] + singlet[T]) ))"
