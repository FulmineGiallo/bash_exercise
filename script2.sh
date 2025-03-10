#!/bin/bash

# Calculate the score of a Scrabble game by summing the letter values for each line in a scrabble.txt file. Use the following rules:
# For each letter A, E, I, O, U, L, N, R, S, T = assign 1
# For each letter D, G = assign 2
# For each letter B, C, M, P = assign 3
# For each F, H, W, Y = assign 4
# For each K = assign 5
# For each J, X = assign 8
# For each Q, Z = assign 10
# Display both the total value for each line and the total sum.

file="file.txt"
sommaRiga=0
sommaTotale=0

while IFS= read -r line || [[ -n "$line" ]]; do
    sommaRiga=0  # Initialize the counter for each line

    while IFS= read -n 1 char; do
        case "$char" in
           A|E|I|O|U|L|N|R|S|T)  # Value 1
                sommaRiga=$((sommaRiga + 1))
                ;;
            D|G)  # Value 2
                sommaRiga=$((sommaRiga + 2))
                ;;
            B|C|M|P)  # Value 3
                sommaRiga=$((sommaRiga + 3))
                ;;
            F|H|W|Y)  # Value 4
                sommaRiga=$((sommaRiga + 4))
                ;;
            K)  # Value 5
                sommaRiga=$((sommaRiga + 5))
                ;;
            J|X)  # Value 6
                sommaRiga=$((sommaRiga + 8))
                ;;
            Q|Z)  # Value 7
                sommaRiga=$((sommaRiga + 10))
                ;;
        esac
        sommaTotale=$((sommaTotale + sommaRiga))
    done <<< "$line"

    echo "Somma per questa riga: $sommaRiga"
    echo  # Print a empty line
done < "$file"

# sum of total line
echo "Somma totale: $sommaTotale"
