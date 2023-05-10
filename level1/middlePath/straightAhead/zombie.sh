sleepyEcho "You see a zombie crawling on the ground." 
sleepyEcho "He isn't in a great mood, but then, what zombie is?"
echo "Do you "
echo "(t)alk to him"
echo "(f)ight him"
echo "(r)ob him"
echo -n "Please enter either t, f, or r here: "

function zombieResponse {
	read answer
	if [[ $answer == "t" ]]; then
		sleepyEcho "You decide to strike up a friendly conversation with the zombie."
		sleepyEcho "'Hello,' you say to the zombie.'"
		sleepyEcho "The zombie looks at you and gives a terrible groan! 'Whyyyyyyyyy??'"	
		sleepyEcho "You are not sure exactly how to respond, so you tell the zombie his hair looks great."
		sleepyEcho "The zombie shouts, 'I have no hair! BAAAAAAAHH!!!'"
		sleepyEcho "A little nervous, you assure the zombie, 'Well it was really beautiful back when you had it, no doubt.'"
		sleepyEcho "The zombie agreed that his hair was in fact very beautiful in its prime."
		sleepyEcho "The zombie walks away rather uplifted by this pleasant interaction."
		sleepyEcho "Isn't it great to be a good Samaritan?"
	elif [[ $answer == "f" ]]; then
		infectionRisk=$RANDOM
		sleepyEcho "You decide to square up and fight that stinking zombie!"
		sleepyEcho "You punch the zombie right in the face, but when you try to take your hand back, the zombie starts to bite it."
		sleepyEcho "You quickly pull your hand away."
		if [[ $infectionRisk -lt 14000 ]]; then
			sleepyEcho "You feel your body fill with a sort of terrible poison, then all of a sudden you feel very sluggish and your skin starts falling off."
			sleepyEcho "You are now a zombie."
			die
		else 
			sleepyEcho "You somehow avoid getting infected, and then trip the zombie, and he falls on his behind, landing so hard he gets the wind knocked out of him."
			sleepyEcho "Upon further observation, the zombie has stopped moving and appears unconscious."
			sleepyEcho "You also notice something interesting on the ground that fell out of the zombie's pocket. It looks like some kind of potion."
			pickUpItem "zombieAntivenom"
		fi
	elif [[ $answer == "r" ]]; then
		sleepyEcho "You try to rob the zombie, and it's remarkably easy."
		pickUpItem "zombieWallet"
		sleepyEcho "The zombie walks away annoyed. That was his favorite zombie wallet!"
	else 
		sleepyEcho -n "Sorry, that was not one of the options. Please enter either t, f, or r here: "
		zombieResponse
	fi
}

zombieResponse
