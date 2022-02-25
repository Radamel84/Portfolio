#!/bin/bash
while true;
do
if [ $? -eq 0 ]
then
read -p "please type a website URL to download or type exit to quit" URL
read -p "please type the location of where you would like to download the file to" URL
wget -m $URL
fi
done