#!/usr/bin/python3 
      

import random
      

   
 

chars = "abcdefghijklmnopqrstuvwxyz0123456789"
chars_list = list(chars)

password = "Enter a password"
guess_password = ""

while(guess_password != password):
    guess_password = random.choices(chars_list, k=len(password))
   
    print("<==================>"+ str(guess_password)+ "<==================>")
   
    if(guess_password == list(password)):
        print(f"Password has been cracked! It was {word}") 

        break
      