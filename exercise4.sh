#! /bin/bash
echo "What file do you want to find?"
read filename

where=$(pwd)
cd /home/$(whoami)

value=$(find . -name ${filename})

if [ ${value} ] 
then
    echo "Exists ${value}"
else
    echo "Does not exist"
fi
