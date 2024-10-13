#!/bin/bash

# Define the folder where the files are located
folder_path="/Users/jayshah/Documents/shellScriptExp"

# Counter to number the files
count=3130

# Loop through each file in the directory
for file in "$folder_path"/*; do
    # Check if it is a file (not a directory)
    if [ -f "$file" ]; then
        # Get the file extension
        extension="${file##*.}"
        
        # Create the new file name using the count
        new_file_name="$count.$extension"
        
        # Get the full path of the new file
        new_file_path="$folder_path/$new_file_name"
        
        # Rename the file
        mv "$file" "$new_file_path"
        
        echo "Renamed: $(basename "$file") -> $new_file_name"
        
        # Increment the count
        ((count++))
    fi
done
