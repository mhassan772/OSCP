#!/bin/bash

#Created by mhassan772
#This program creates a directory for each IP, doing an nmap light scan and full tcp scan then save the output in the directory
#Usage: ./file path <file with ip addresses list
#make sure the Directory have "/" at the end

while read ip; 
do
	mkdir $1$ip
  sudo nmap $ip --top-ports 10 --open -oN $1$ip/nmap_light_scan.txt;
  sudo nmap $ip -p- -sV --reason -oN $1$ip/nmap_full_tcp_scan.txt;
done

