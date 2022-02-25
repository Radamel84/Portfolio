#!/bin/bash

# call and run 'IpInofh.sh' and assign to variable 'ip_info'
ip_info=$(./IpInfo.sh)

# print only line that matches pattern 'IP'
echo "$ip_info" | sed -n '/IP Address/p'



     
      


      
 
    
           


     