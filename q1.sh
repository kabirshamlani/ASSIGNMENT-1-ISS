#!/bin/bash
#using sed
#sed '/^$/d' quotes.txt > file.txt
#using grep
grep "\S" quotes.txt 
sort quotes.txt | uniq -u 