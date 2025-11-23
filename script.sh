#!/bin/bash

# chmod +x script.sh
# ./script.sh

username="akshat"
echo $username

# if loop to check existance of file
if [ -e ./abc.txt ]; then
  echo "File present"
else
  echo "File not present"
fi

# for loop
for item in file1 file2 file3; do
  echo $item
done

# redirect stdout and stderr in output file
ls /home/ubuntu/abc.txt &> output.txt

# $? to check last command success result
ls /root/abc.txt
echo $?
# 0 -> success
# non-zero -> failure


# Read a file from test.csv
while IFS=, read -r column1 column2 column3; do
  echo $column1 ", " $column2 ", " $column3
done < test.csv

# use set for debug
set -x
# Arithmatic operation
echo $((3+4))
# o/p = 7

echo $(expr 3 + 4)
# o/p = 7
set +x

# how to handle trap signals
trap 'echo "Signal recevied, cleaning"; cleanup_fun; exit' SIGINT SIGTERM

cleanup_fun() {
  echo "Cleaning"
  # cleaning commands
}

while true; do
  sleep 1
done
