#!/bin/bash -x

echo "Welcome to Tic tac toe Game"
 
declare -a board
#constants
PLAYER=X;
COMPUTER=O;
TAIL=0;
HEAD=1
function initializingBoard(){

	board=(0,0,0,0,0,0,0,0,0)

}

function toss(){
	playFirst=$((RANDOM%2))
	if [[ $playFirst == $HEAD ]]
	then 
		echo "PLAYER play first "
	else
		echo  "computer play first"
	fi
}
initializingBoard
toss
echo $playFirst
