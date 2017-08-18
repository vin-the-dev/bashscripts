#!/bin/bash
cd "$(dirname "$0")"

dir="$(dirname "$0")"

read -p "Enter your file size @ 1x: " filesize

echo $filesize

for entry in "$dir"/*.png
do
  echo "$entry"

  extension="${entry##*.}"
  filename="${entry##*/}"
  name=$(echo $filename | cut -f 1 -d '.')

  mkdir $name
  convert $filename -resize $filesize'x'$filesize $name"temp."$extension
  mv $name"temp."$extension $name/$name"."$extension

  convert $filename -resize $((filesize*2))'x'$((filesize*2)) $name"temp."$extension
  mv $name"temp."$extension $name/$name"@2x."$extension

  convert $filename -resize $((filesize*3))'x'$((filesize*3)) $name"temp."$extension
  mv $name"temp."$extension $name/$name"@3x."$extension
  
done

read _

# for f in "$dir"/*; do
#   echo "$f"
# done
# echo "Total files in array : ${#arr[*]}"
# total=${#arr[*]}

# echo "Second filename: ${arrSize[1]}"

# for (( i=0; i<=$(( $total -1 )); i++ ))
# do
#     echo -n "${arr[$i]}"
#     echo -n "${arrSize[$i]}"

# 	cp "icon.png" "${arr[$i]}"
# 	sips -Z "${arrSize[$i]}" "${arr[$i]}"
# done