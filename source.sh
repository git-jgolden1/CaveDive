function sleepyEcho {
	echo $1
	sleep 2
}

echo "Welcome to the entrance to the cave...No one would blame you if you turned back now...are you sure you want to enter?"
echo -n "Type your answer here: "
read fate

#CORRECT="y"

if [[ "$fate" == *"y"* ]] || [[ "$fate" == *"Y"* ]] ; then
	echo "Then buckle up young pup! You have a long journey ahead of you!"
	cd level1
else
	echo "I don't blame you, you probably never would have made it..."
fi

function start {
	source source.sh
}

function go {
	cd $1
}
function up {
	cd ..
}
function back {
	cd ..
}

function s {
	source $1
}

function die {
sleepyEcho "You have died..."
	sleepyEcho "I knew you could never make it"
	cd /Users/jgolden1/CommandLineGame
}

function quit {
	cd ~/CommandLineGame
}

function holeJump {
	sleepyEcho "You jump into a hole."
}

item=""

function item {
	if [[ "$item" != "" ]]; then
		echo "Your item is $item"
	else 
		echo "You don't have any items."
	fi
}

function pickUpItem {
	echo -n "Pick up $1? Type your answer here: "
	read answer
	if [[ "$answer" == *"y"* ]] || [[ "$answer" == *"Y"* ]]; then
		if [[ "$item" != "" ]]; then
			echo "You take your $item out of your pack, and put in your new $1!"
			item=$1
		else
			item=$1
			echo "You put your new $item in your pack!"
		fi
	else 	
		echo "You leave the $1 on the ground."	
	fi
}

function dropItem {
	echo -n "Are you sure you want to drop your $item? Type your answer here: "
	read answer
	if [[ "$answer" == *"y"* ]] || [[ "$answer" == *"Y"* ]]; then
		if [[ "$item" != "" ]]; then
			echo "You drop your $item on the ground. Your pack is now empty"
			item=""
		else
			echo "You don't have any items to drop!"
		fi
	else 	
		echo "Ok then."	
	fi
}

