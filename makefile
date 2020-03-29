README.md:  
	touch README.md
	echo "The Number Guessing Game" >> README.md
	echo "Creation date:" >> README.md
	date >> README.md
	echo "Number of lines is:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
   

