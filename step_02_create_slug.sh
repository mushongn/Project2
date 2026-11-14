#! /bin/bash



if ! [[ $# -eq 2 ]]; then
    echo "Error! Expected two arguments: 1) a date (MM-DD-YYYY format) and 2) the replicate ID"    
    exit 1

fi

str=$1
if [[ $str =~ ^(.*)-([0-9]{4})(.*)$ ]]; then
    
    
    str="${BASH_REMATCH[2]}_${BASH_REMATCH[1]}${BASH_REMATCH[3]}"
    echo "$new_str"
fi


date="${str//-/_}"

printf -v exp "%04d" "$2"

echo "${date}_${exp}"
