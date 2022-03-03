#!/bin/bash
export TERM=xterm
red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
blue=`tput setaf 4`
magenta=`tput setaf 5`
reset=`tput sgr0`
while [ true ]
do 
    echo "${blue}waiting for command...${reset}"; 
    rcv=$(cat $PIPES/api/request); 
    printf '%s %s\n' "$(date): ${yellow}[ $rcv ]${reset} received."
    eval $rcv > $PIPES/api/response; 
    printf '%s %s\n' "$(date): ${blue}output sent${reset}"
done
