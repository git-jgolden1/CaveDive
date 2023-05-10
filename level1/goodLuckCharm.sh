if [[ $item != "goodLuckCharm" ]]; then 
	sleepyEcho "You look on the ground, and there you see a token with a 4-leaf clover on it."
	sleepyEcho "It's a good luck charm!"
	pickUpItem "goodLuckCharm"
else
	echo "You already have this item in your pack!"
fi
