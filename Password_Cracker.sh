#!/bin/bash

# Sprawdzamy nazwę użytkownika jeśli nie ma to pokazuje nam jak kozystać ze skryptu
if [ -z "$1" ]; then
  echo "Usage: $0 <username>"
  exit 1
fi

# Pobieramy nazwe uzytkownika którą będziemy grepować
User_name=$1

# Grepujemy uzytkownika z hashowanym hasłem
sudo grep "$User_name" /etc/shadow > password.txt

# deszyfrujemy hasło za pomocą Kubusia rozprowacza
echo '########################################################################################################################'
john password.txt --format=crypt
echo '########################################################################################################################'

# usuwamy plik password poniewaz nie jest juz nam potrzebny
rm password.txt
# na koncu wyświetlamy komunikat o zakonczeniu skryptu
echo end of script
