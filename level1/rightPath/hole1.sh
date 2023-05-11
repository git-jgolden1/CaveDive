holeJump
sleepyEcho "You hear a slurp. That wasn't a hole! It was a slime monster!"
sleepyEcho "You jump out of the slime monster's...self, and try to run away, but the slime monster jumps and appears to be right over your head."
sleepyEcho "Do you try to dodge?"
read answer
if [[ $answer == "y" ]] || [[ $answer == "Y" ]]; then
	sleepyEcho "You try to dodge, but slip on the hard floor, and bonk and hit your head."	
	sleepyEcho "When you wake up, you are already being dissolved in the slime monster's body. Your future looks bleak."
	die
else
	sleepyEcho "You stand perfectly still, and the slime monster slips, and flies across the cave floor. He gets stuck to the wall of the cave."
	pickUpItem "slimeMonsterChunk"
fi
