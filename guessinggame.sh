#!/bin/bash

# Function to get the number of files in the current directory
get_file_count() {
	  echo $(ls -A | wc -l)
  }

# Main function for the guessing game
guessing_game() {
	  local file_count=$(get_file_count)
	    local guess

	      echo "Welcome to the guessing game!"
	        echo "Guess how many files are in the current directory:"

		  while true; do
			      read guess

			          if [[ $guess -eq $file_count ]]; then
					        echo "Congratulations! You guessed correctly!"
						      break
						          elif [[ $guess -lt $file_count ]]; then
								        echo "Too low! Try again:"
									    else
										          echo "Too high! Try again:"
											      fi
											        done
											}

										# Call the main function to start the guessing game
										guessing_game

