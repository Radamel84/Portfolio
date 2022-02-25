#!/bin/bash

./checkPassword.sh

if [ $? -eq 0 ];then
while :;
do
    echo -e "\e[1;32m"1 create a folder" \e[0m"
    echo -e "\e[1;32m"2 copy a folder" \e[0m"
    echo -e "\e[1;32m"3 set a password" \e[0m"
    echo -e "\e[1;32m"4 calculator" \e[0m"
    echo -e "\e[1;32m"5 create week folders" \e[0m"
    echo -e "\e[1;32m"6 check file names" \e[0m"
    echo -e "\e[1;32m"7 download a file" \e[0m"
    echo  "8 exit"

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
4)
    ./calculator.sh
    ;;
5)
    ./megafoldermaker.sh
    ;;
6)
    ./filenames.sh
    ;;
7)
    ./internetDownloader.sh

    ;;
8) exit 
esac 
done
fi