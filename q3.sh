    #!/bin/bash
    #echo " Size of the file in bytes "
   # wc -c $1    #part a
    #echo " total number of lines in the file "
    #wc -l $1    #part b
    #echo "total number of Words in the file" 
    #wc -w $1    #part c
    #awk '{print echo "Line No:" (( (( i++ ))+1)) "- Count of Words " NF}' $1;  #//part d

  #// trail.sh // part e
  
    if [ $# -ne 1 ];
    then
    echo "Usage: $0 $1";
    exit -1
    fi

    filename=$1
    egrep -o "\b[[:alpha:]]+\b" $filename | awk '{ count[$0]++ }
    END {
    for(ind in count)
    { 
     if (( count[ind] >= 2 ))
     printf("WORD: %-14s Count of repetition: %d\n",ind,count[ind]); 
    }

    }'
