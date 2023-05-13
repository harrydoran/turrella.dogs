#!/bin/bash

# Get all filenames in the current directory
files=$(ls -1 images/)

# Initialize the gallery string
gallery="{{< gallery >}}"

# Loop through the files and add them to the gallery string
for file in $files
do
  if [[ $file == *.jpg ]]; then
    gallery+="\n  <img src=\"images/$file\" class=\"grid-w50 md:grid-w33 xl:grid-w25\" />"
  fi
done

# Close the gallery string
gallery+="\n{{< /gallery >}}"

# Output the gallery string
echo -e $gallery

