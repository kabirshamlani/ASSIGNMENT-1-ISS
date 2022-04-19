#!/bin/bash
#part a
str="$1"
len=${#str}
for (( i=$len-1; i>=0; i-- ))
do
   rs="$rs${str:$i:1}"
done
echo "$rs"

#part b
str1="$1"
len1=${#str}
for (( i=$len1-1; i>=0; i-- ))
do
   rs1="$rs1${str1:$i:1}"
done
rs1=$(echo "$rs1" | tr "0-9a-z" "1-9a-z_"| tr "0-9A-Z" "1-9A-Z_")
echo "$rs1"

#part c
str2="$1"
rs2=""
len2=${#str2}
#len=(( len/2 ));
for (( i=($len2-1)/2; i>=0; i-- ))
do
   rs2="$rs2${str2:$i:1}"
done
#rs=$(echo "$rs" | tr "0-9a-z" "1-9a-z_"| tr "0-9A-Z" "1-9A-Z_")
#echo "$rs"
for (( i=($len2)/2; i<=$len2-1; i++))
do
   rs2="$rs2${str2:$i:1}"
done
#rs=$(echo "$rs" | tr "0-9a-z" "1-9a-z_"| tr "0-9A-Z" "1-9A-Z_")
echo "$rs2"



