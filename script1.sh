# Write a BASH script "visita.sh" that visits all the files in the current directory.
# For each file, determine its type. If the file is readable and is a txt, doc, sh, or c file,
# visita.sh asks the user if they want to view its content by showing only the first 3 lines,
# while if the file is a subdirectory, visita.sh asks if they want to visit the subdirectory as well.
# For each file encountered, visita.sh asks if the user wants to delete it before moving on to the next file in the current directory.
#!/bin/bash

#!/bin/bash
# Start Directory
start_dir=$(pwd)

for file in *; do
    if [[ -f "$file" && -r "$file" && ("$file" == *.txt || "$file" == *.c || "$file" == *.sh) ]]; then
        echo "do you want to see the first 3 lines?"
        read choice 
        if [ "$choice" == "Yes" ]
            head -3 "$file"
        else   
            echo "do u want remove?"
            read remove
            if [ "$remove" == "Yes" ] 
                rm "$file"
            if 
        fi
    fi
    if [ -d "$file" ]
        echo "do u want visit the subdirectories?"
        read choice
        if [ "$choice" == "yes" ]
            
            cd "$file" || continue
            bash "$start_dir/$0"  #I re-run the script in the subdirectories
            cd "$start_dir" || exit 1

        fi
    fi
done
