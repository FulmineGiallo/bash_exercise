# !/bin/bash

# Data un stringa, trasformare le vocali (a,e,i,o,u) in (A,E,I,O,U).
# Esempio: Come va? --> COmE vA?

if [ $# -eq 0 ]; then
    echo "Non hai inserito string enegli argomenti"
    exit 1;
fi

echo "$1" | sed -E 'y/aeiou/AEIOU/g'
