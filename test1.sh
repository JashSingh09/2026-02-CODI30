#!/bin/bash
#time to get cooked
GUESS=$(($RANDOM % 10 + 1))
#define Variable,
#$ equals the variable, random is a bash varible that pickes from 0-9, +1 bumps i to 1-10
ATTEMPTS=0
#track attempts
echo "pick a number between 1-10"
echo 'dont you dare try to pick another number'
#echo displays the text to the user

while true; do
#creates infinite loop by repeating the code until number is guessed
	read -p "Your guess:" GUESS
# take in user input, -p gives a prompt to a user and stores it in GUESS
if [[ $GUESS =~ ]]; then
	#statements
fiif !
#checks if the input given is a number input or not


