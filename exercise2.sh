#! /bin/bash

cd /home/$(whoami)

mkdir exupper
cd exupper
mkdir exlower
cd exlower
touch test1.txt
touch test2.txt
mv test1.txt /home/$(whoami)/exeupper
mv test2.txt test2.sh
echo "#! /bin/bash" > test2.sh
echo "pwd" >> test2.sh
echo "whoami" >> test2.sh
chmod +x test2.sh
./test2.sh



