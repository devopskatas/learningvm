#!/bin/bash

echo ARGS: "$@"
TOLINE=0
MODE="E"
CMDFILE=""

while [[ $# -gt 0 ]]
do
key="$1"
#echo ARG "$key"
case $key in
	-l|--list)
	MODE="$1"
	CMDFILE="$2"
	;;
	-to|--to-line)		
	TOLINE="$2"
	CMDFILE="$3"	
	shift # past argument
	;;
	-E)
	CMDFILE="$2"
	;;
	--default)
	DEFAULT=YES
	;;
	*)
		# unknown option
	;;
esac
shift # past argument or value
done

#read textfile into array
mapfile -t myArray < $CMDFILE

step=1
if [ $TOLINE == 0 ] ; then
	TOLINE=${#myArray[@]}
	#echo "FULL ARRAY"
fi

#LIST
if [ "$MODE" == "-l" ] || [ "$MODE" == "--list" ] ; then		
	for (( c=0; c<$TOLINE; c++))
	do
	echo $((c+1)) : ${myArray[$c]}
	done
fi

#EXECUTE
if [ "$MODE" == "E" ] ; then
	echo "EXECUTE"	
	for (( c=0; c<$TOLINE; c++))
	do
		if [[ ! ${myArray[$c]} =~ ^# ]] ; then
			#echo $((c+1)): ${myArray[$c]}
			eval ${myArray[$c]}
		else
			echo ${myArray[$c]}
		fi
	done
fi