#!/bin/bash
# this is a bash command 
echo "enter foldername"
read foldername

mkdir $foldername

read -sp 'Enter Password' pass_var

echo $pass_var | sha256sum >./$foldername/secret.txt

