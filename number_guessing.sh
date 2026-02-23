#!/bin/bash
#time to get cooked
NUMBER=$(($RANDOM % 10 + 1))
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
	if ! [[ $GUESS =~ ^[0-9]+$ ]]; then
		echo "that is not the number loser, try again."
		continue
#checks if the input given is a number input or not
#its wrong so repeat to next loop
#! symbol makes it inverted to catch invalid inputs
	fi

	ATTEMPTS=$((ATTEMPTS + 1))

	if [ "$GUESS" -lt "$NUMBER" ]; then
		#if the user input is "lower than the number, then tell them, same with greater than"
		echo "too low"
	elif [ "$GUESS" -gt "$NUMBER" ]; then
		echo "too high"
		#elif checks if and elif at the same time, if its true then it runs the code
		#spacing very important for reasons my teensy tiny cranium can not comprehend
	else 
		echo "YOU DID IT YOU ARE VERY SMART"
		break
		#for some reason its better to put a echo after the elif but thats ok
		#if if and elif are both false, then else is run and breaks the infinite loop
	fi
done
#ends 'while' loop thus ending script





