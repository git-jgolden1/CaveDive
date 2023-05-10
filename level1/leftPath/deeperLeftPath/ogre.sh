sleepyEcho "You see a ogre, and walk over to him. He doesn't look happy at all. In fact, he pulls out a spiked club that's bigger than you."
echo "'Any last words?' The ogre asks."
echo -n	"Type your last words here: "
read lastWords
lowercaseLastWords=$(echo $lastWords | tr '[:upper:]' '[:lower:]')

if [[ "$lowercaseLastWords" == *"mercy"* ]] || [[ "$lowercaseLastWords" == *"please"* ]] || [[ "$lowercaseLastWords" == *"save"* ]] ; then
#if [[ "$lastWords" == *"mercy"* ]] || [[ "$lastWords" == *"please"* ]] || [[ "$lastWords" == *"save"* ]] ; then
sleepyEcho "The ogre decides he's not in such a mean mood, and walks away without saying a word."
	sleepyEcho "Whew!"
else 
	sleepyEcho "The ogre lifts his giant spiked club in the air over his head, and smashes you right in the head!!!"
	sleepyEcho "OUCH! That didn't feel good at all...you begin to feel very woozy."
	die
fi
