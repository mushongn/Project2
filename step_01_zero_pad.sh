#! /bin/bash

if ! [[ $# -eq 2 ]]; then
    echo "Error! Expected two arguments: 1) the number to pad and 2) the length to pad to"
    exit 1
fi

num=$2
str=$1

lenstr="${#str}"
zerotoadd=$(( $num - $lenstr ))


index=1
while [ $index -le $zerotoadd ];
do
    zero=0
    str="$zero$str"
    index=$((index+1))
done

echo $str

