#source.sh

function sleepyEcho {
	echo $1
	sleep 2
}

echo "Welcome to the entrance to the cave...No one would blame you if you turned back now...are you sure you want to enter?"
echo -n "Type your answer here: "
read -r fate

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
	cd /Users/jgolden1/CommandLineGame
}

function holeJump {
	sleepyEcho "You jump into a hole."
}
