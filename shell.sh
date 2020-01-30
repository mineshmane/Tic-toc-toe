#!/bin/bash 

echo "Welcome to Tic tac toe Game"
 
declare -a board
#constants
PLAYER=X;
COMPUTER=O;
TAIL=0;
HEAD=1;
BOARD=10;

function  printBoard(){

	echo "${board[1]}"
	echo " -------------"
	echo " | "${board[1]}" | "${board[2]}" | "${board[3]}" | "
	echo " -------------"
	echo " | "${board[4]}" | "${board[5]}" | "${board[6]}" | "
	echo " -------------"
	echo " | "${board[7]}" | "${board[8]}" | "${board[9]}" | "
	echo " -------------"
}

function userInput() {
   read -p "Enter your choice :" POSITION
	if [ $POSITION -gt 10 ]
	then
		echo "Invalid Input"
	fi 
	board[$POSITION]=$PLAYER 
	printBoard
}

function initializingBoard(){

for (( i=1; i< $BOARD; i++ ))
	do
	board[$i]=$i
	done
}

function toss(){
	playFirst=$((RANDOM%2))
	if [[ $playFirst == $HEAD ]]
	then 
		echo "PLAYER play first "
		printBoard
		userInput
	else
		echo  "computer play first"
		printBoard
	fi
}
initializingBoard
toss
echo $playFirst
