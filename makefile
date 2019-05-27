README.md: guessinggame.sh
	touch README.md
	echo "# Project: guessing game" >>README.md
	date >> README.md
	echo "The guessinggame.sh has " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]*" >> README.md
	echo "lines." >> README.md
