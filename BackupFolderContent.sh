#!/bin/bash

echo "Set the folder you want to backup. "
read -p "Press just Enter to backup current folder: " folder

if [ -z "$folder" ]
    then
        echo "#####################" 
        echo "You didn´t set folder to backup, using current."
        echo "#####################"
            
        j="$PWD"
        else
        echo "#####################" 
        echo "Making backup of $folder" 
        echo "#####################"
        j="$folder"    
fi

echo "Set where you want to make the backup. "
read -p "Press just Enter to make it in current folder: " output

if [ -z "$output" ] 
    then
        echo "#####################" 
        echo "You didn´t set folder to save backup, using current."
        echo "#####################"       
       
        j="$PWD"
        else
        echo "#####################" 
        echo "Making backup in $output" 
        echo "#####################" 
        j="$output"
fi


  
    version=`date '+%Y-%m-%d_%H-%M-%S'`
     
    
    file="$output BackupFiles_"$version"_"$(basename "$j")".txt"


        echo "----------------------------------------------------------------------------- " >> "$file"
        echo "LIST OF ALL FILES AND DIRECTORIES IN $j: " >> "$file"
        echo "----------------------------------------------------------------------------- " >> "$file"

      
        
        echo "----------------------------------------------------------------------------- " >> "$file"
        echo "DIRECTORIES: " >> "$file"
        echo "----------------------------------------------------------------------------- " >> "$file"
        find "$j" -type d >>"$file"

        echo "----------------------------------------------------------------------------- " >> "$file"
        echo "FILES: " >> "$file"
        echo "----------------------------------------------------------------------------- " >> "$file"
        
        ls "$j" -R >> "$file"
        
        echo "DONE"
    
   
