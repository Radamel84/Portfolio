#!/bin/bash

./checkPassword.sh

if [ $? -eq 0 ];then
while :;
do
    echo -e "\e[1;33m"1 create a folder" \e[0m"
    echo -e "\e[1;33m"2 copy a folder" \e[0m"
    echo -e "\e[1;33m"3 set a password" \e[0m"
   

read useroption

case $useroption in

1)
    ./foldermaker.sh
    ;;

2)

    ./foldercopier.sh
    ;;

3)
    ./setPassword.sh
    ;;

esac 
done
fi
