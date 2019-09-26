#!/bin/bash

# USAGE: Import all JSON files in a dir "./import-metadata.sh dir/"
# USAGE: Import a specific JSON file "./import-metadata.sh dir/metadata.json"

if [[ -d $1 ]]; then
    for file in $1/*.json ; 
    do
        http POST "$DHIS2_URL/api/metadata" < "$file"
    done;
elif [[ (-f $1) && ($1 == *.json) ]]; then
    http POST "$DHIS2_URL/api/metadata" < "$1"
else
    echo "ERROR: $1 is not a valid file or directory"
    exit 1
fi
