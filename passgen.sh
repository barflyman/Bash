#!/bin/bash

#Generate complex passwords 
#Usage: $bash passgen.sh [length] [count] 


CHARSET="[:alnum:]" 

PASSWORD_LENGTH=$1  # Lenth of generated password
PASSWORD_COUNTS=$2  # Count of generated passwords

generate_password() {
  PASSWORD=$(head /dev/urandom | tr -dc "$CHARSET" | head -c "$PASSWORD_LENGTH")
  echo "$PASSWORD"
}

for ((i=1;i<=$PASSWORD_COUNTS;i++))
do
  password=$(generate_password)
  echo "Password $i: $password"
done
