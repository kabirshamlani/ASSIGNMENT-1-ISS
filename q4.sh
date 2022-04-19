#!/bin/bash
data=$(<$1)
IFS=',' read -ra arr <<< "$data"
#echo "entre the size of array"
#read n
strlen=${#arr[@]}
strlen=$(($strlen-1))
#for ((i=0; i<$strlen ;i++))
#do
#read arr[i]
#done
#echo ${arr[*]}

# Performing Bubble sort 
for ((i = 0; i<$strlen; i++))
do
    
    for((j = 0; j<$strlen-$i-1; j++))
    do
    
        if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
            # swap
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}  
            arr[$((j+1))]=$temp
        fi
    done
done

echo "Array in sorted order :"
echo ${arr[*]}
