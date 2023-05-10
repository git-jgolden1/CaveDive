sleepyEcho "You see a bat resting itself on the roof of the cave. You decide to yell at it loudly!" 
sleepyEcho "The bat appears unhappy at having been awoken from its nap, so it flutters down and comes at you!"

function batFight {
	evasionStat=$RANDOM
	if [[ $evasionStat -lt 10000 ]]; then
		sleepyEcho "You swing at the bat, but it jukes you out and gets the best of you! It bites you right in the face, and that's the last you remember before blacking out."
		die
	else 
		sleepyEcho "You swing at the bat, and clock it good."
		sleepyEcho "The bat flies back up in the air and goes back to sleep."
	fi
}

batFight
