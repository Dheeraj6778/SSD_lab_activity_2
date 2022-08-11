#! /bin/bash
#read file
file=$1
#echo "$index"
#awk '{if( NR== $index ) print $0}' $file
cnt=$(cat $file | wc -l)
#echo "$cnt"
index=$((cnt/2))
if [ `expr $cnt % 2` == 1 ]
then
	index=$((index+1))
fi
#head -n $((index)) $file | tail -n + $((index))
head -$((index)) $file | tail -1
#awk '{if(NR=="$index") print $0}' $file
