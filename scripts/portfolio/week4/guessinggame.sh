#!/bin/bash
printError() 
      
{ 
      
    echo -e "\033[31mERROR:\033[0m $1" 
      
} 
      
 
getNumber() 

{
     read -p "$1: " 
      
    while (( $REPLY < $2 || $REPLY> $3 )); do 
      
        printError "Input must be between $2 and $3" 
      
        read -p "$1: " 
      
    done 
        read -p "$1: " 
      
   while (( $REPLY < 42 ))  ; do
      
        printError "too low" 
      
        read -p "$1: " 
      
    done
   
  while (( $REPLY> 42 )) ; do
    printError "too high" 
      
        read -p "$1: " 
    done
       
         while (( $REPLY == 42 )) ; do
    print "Correct" 
      
        read -p "$1: " 
        done
}
echo "this is the start of the script" 
      
getNumber "please type a number between 1 and 100" 1 100 