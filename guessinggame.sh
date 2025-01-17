#!/bin/bash

# Function to count files and handle guessing logic
function guess_files {
    local file_count=$(ls -1 | wc -l)
    while true; do
        echo "Guess how many files are in the current directory:"
        read guess
        if [[ $guess -eq $file_count ]]; then
            echo "Congratulations! You guessed the correct number of files: $file_count."
            break
        elif [[ $guess -lt $file_count ]]; then
            echo "Too low. Try again!"
        else
            echo "Too high. Try again!"
        fi
    done
}

# Run the guessing function
guess_files
