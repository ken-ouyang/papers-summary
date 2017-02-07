#! /bin/bash

filename="$1"
folder="${filename%.*}"
if [ ! -d $folder ]; then
  mkdir ${folder}
fi
id=0
cat $1 | while read line
do
  wget "${line}" -O "${folder}/${id}" --connect-timeout=5 --tries=5
  id=$((id+1))
done
