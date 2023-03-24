#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo 'Enter your username:'

while read USERNAME
do
  if [[  ${#USERNAME} -gt 22 ]]
  then
    echo 'Enter your username:'
  else  
    break
  fi
done


GET_BEST_GAME=$($PSQL "select min(number_guess) from users inner join guesses using(user_id) where username='$USERNAME' ")
GET_GAMES_PLAYED=$($PSQL "select count(*) from users inner join guesses using(user_id) where username='$USERNAME' ")
GET_USERNAME=$($PSQL "select username from users where username='$USERNAME' ")
  if [[ -z $GET_USERNAME ]]
  then
    echo "Welcome, $USERNAME! It looks like this is your first time here."
    INSERT_NEW_USERNAME=$($PSQL "insert into users(username) values('$USERNAME') ")
  else 
    echo "Welcome back, $USERNAME! You have played $GET_GAMES_PLAYED games, and your best game took $GET_BEST_GAME guesses."
  fi


  RANDOM_NUMBER=$((1+ $RANDOM %1000 ))
  echo $RANDOM_NUMBER
  echo "Guess the secret number between 1 and 1000:"
  
  NUMBER_GUESS=1
  while read NUMBER_GUESSED
  do
    if [[ ! $NUMBER_GUESSED =~ ^[0-9]+$ ]]
    then
      echo "That is not an integer, guess again:"
    else
      if [[ $NUMBER_GUESSED -eq $RANDOM_NUMBER ]]
      then
        break;
      else
        if [[ $NUMBER_GUESSED -lt $RANDOM_NUMBER ]]
        then
          echo "It's higher than that, guess again:"
        else 
          echo "It's lower than that, guess again:" 
        fi
      fi
    fi
  NUMBER_GUESS=$(( $NUMBER_GUESS + 1 ))
  done

  echo "You guessed it in $NUMBER_GUESS tries. The secret number was $RANDOM_NUMBER. Nice job!"

GET_USER_ID=$($PSQL "select user_id from users where username='$USERNAME' ")
INSERT_GUESSE=$($PSQL "insert into guesses(number_guess, user_id) values($NUMBER_GUESS ,$GET_USER_ID) ")
