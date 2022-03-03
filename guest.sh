#!/bin/bash
red=`tput setaf 1`
green=`tput setaf 2`
blue=`tput setaf 4`
magenta=`tput setaf 5`
reset=`tput sgr0`
while [ true ]
do
    echo -n "${magenta}lier-terminal ${green}\$${reset} ";
    read;
    echo "${blue}sending... ${green}[ $REPLY ]${reset}"
    echo $REPLY > $1; 
    echo "${blue}waiting for output...${reset}";
    cat ./$2;
done
