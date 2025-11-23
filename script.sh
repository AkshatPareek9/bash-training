#!/bin/bash

username="akshat"
echo $username

set -x
# Arithmatic operation
echo $((3+4))
# o/p = 7

echo $(expr 3 + 4)
# o/p = 7
set +x
