#!/bin/bash

 

export  GREP_COLOR=33  

 

 

find . -type f -exec cat {} + > data.txt

 

echo "show all sed statements"

grep --color -i sed data.txt

 

echo "show lines that start with 'm'"

grep --color -i "^m" data.txt

 



echo "shows all lines that contain three digit numbers"

grep --color -i -P '(?<!\d)\d{3}(?!\d)' data.txt

 

 

 


echo "show all lines with echo statements with atleast three words"

grep -P 'echo .*\"[a-zA-Z]+\s.+[a-zA-Z]+\s.+[a-zA-Z]+\s.+"'  data.txt

 

 

# shows all lines that would make good password.

# check each line from data.txt as a possible password

# run each line/possible password against various passwor strength

# criteria

# check user input against various password strength requirements

 

 



# read each line in the data file



while read secret_password; do

len="${#secret_password}"

 

 

# apply complexity checks per line

# consider calling as function or script

 

if test $len -ge 8 ; then

    

    echo "The line being checked for password complexity is= $secret_password"

    echo "$secret_password" | grep -q [0-9]

      

    if test $? -eq 0 ; then

      

    echo "$secret_password" | grep -q [A-Z]

      

    if test $? -eq 0 ; then

      

    echo "$secret_password" | grep -q [a-z]

      

    if test $? -eq 0 ; then

      

    echo "$secret_password" | grep -q [$,@,#,%]

      

    if test $? -eq 0 ; then

      

    echo "Thank you.  Password strength accepted."

      

        else

      

        echo "weak password include special chars"

      

        fi

      

    else

      

    echo "weak password include lower case char"

      

    fi

      

    else

      

    echo "weak password include capital char"

      

    fi

      

    else

      

    echo "please include the numbers in password it is weak password"

      

    fi

      

else

      

echo "password length should be greater than or equal 8 hence weak password"

      

fi

done < data.txt






