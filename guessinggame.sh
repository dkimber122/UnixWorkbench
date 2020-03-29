#!/usr/bin/env bash
# File: guessinggame.sh
# by Dawn Kimber

echo "Welcome to the Number Guessing Game. Have fun!"

function input {
        echo "Enter a guess for the number of files in the directory."
        echo "Then press Enter."
        read guess
        echo "You entered $guess"
    files=$(ls -1 | wc -l)
}

input

while [[ $guess -ne $files ]]
do
    if [[ $guess -lt $files ]]
    then
        echo "Too low! Try again."
        input
    elif [[ $guess -gt $files ]]
    then
        echo "Too high! Try again."
        input
    fi
done

echo "Congratulations! You have guessed correctly. Goodbye."
