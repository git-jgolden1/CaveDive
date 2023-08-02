holeJump
sleepyEcho "You can immediately tell that this hole is incredibly deep. You fall, and keep on falling for a long time."
echo -n "Do you attempt to grab onto the edges? Type your answer here: "
read answer

if [[ $answer == *"y"* ]] || [[ $answer == *"Y"* ]]; then 
	sleepyEcho "You grab onto the edges as you fall, but it hurts your hands so much that you bounce off of one wall and then the other, and you keep on tumbling down."
	sleepyEcho "You're not sure what would have been at the bottom because the whole world gets really foggy before you even reach the bottom."
	die
else
	sleepyEcho "You allow yourself to fall and keep on falling, and miraculously end up in a pool of water just deep enough for you to land in unharmed."
	echo "You take a look around, and realize you have arrived at the second level of the cave!"
	cd ~/CommandLineGame/CaveDive/level2
fi
