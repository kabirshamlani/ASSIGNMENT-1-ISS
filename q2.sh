#!/bin/bash
#$1=quotes.txt
#$2=speech.txt
while read -r line
do
awk -F~ '{print $2 " once said ,\"" $1 "\""}'file>>$2
done <"$1"