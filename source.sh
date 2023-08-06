gamePath=~/CommandLineGames/CaveDive
start() {
	echo "Welcome to the Cave of Mind Games..."
	echo "...where many enter with their sanity, but few leave with it."
	echo "Are you sure you want to enter?"
	echo "Enter (y)es or (n)o below:"
	read userWantsToEnter
	if [[ "$userWantsToEnter" == *"y"* ]] || [[ "$userWantsToEnter" == *"Y"* ]]; then
		echo "Welcome to the cave, then brave warrior!"
		cd level1;
	else 
		echo "It's probably for the best. At least you'll keep your sanity!"
	fi
}
start
