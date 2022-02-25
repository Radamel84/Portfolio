#!/bin/bash
echo "Enter Two numbers : "
read a
read b
 
# Input type of operation
echo -e "Enter Choice :"
echo -e "\033[34m 1. Addition"
echo -e "\033[32m 2. Subtraction" 
echo -e "\033[31m 3. Multiplication"
echo -e "\033[35m 4. Division"

read ch
 
# Switch Case to perform
# calculator operations
case $ch in
  1)res=`echo $a + $b | bc`
  ;;
  2)res=`echo $a - $b | bc`
  ;;
  3)res=`echo $a \* $b | bc`
  ;;
  4)res=`echo "scale=2; $a / $b" | bc`
  ;;
esac
echo "Result : $res"
