#! /bin/bash

echo "What is the name of the file?"
read name

echo "Title?"
read title

cd /home/$(whoami)

if [ -d "meetings" ]
then
	cd meetings
else
	mkdir meetings
	cd meetings
fi

if [ -d "$(date "+%B-%Y")" ] 
then
    cd $(date "+%B-%Y")
else
    mkdir $(date "+%B-%Y")
    cd $(date "+%B-%Y")
fi

touch ${name}$(date "+%d").md
echo "## ${title} Date: $(date "+%D")" >> ${name}$(date "+%d").md
vim ${name}-$(date "+%d").md
