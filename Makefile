README.md: guessinggame.sh
	echo "# Guessing Game Project" > README.md
	echo "\n**Generated on:** $$(date)" >> README.md
	echo "\n**Number of lines in guessinggame.sh:** $$(wc -l < guessinggame.sh)" >> README.md

clean:
	rm -f README.md
