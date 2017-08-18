#!/bin/bash
cd "$(dirname "$0")"

dir="$(dirname "$0")"
echo $filesize

mkdir "res"
mkdir "res/drawable-hdpi"
mkdir "res/drawable-ldpi"
mkdir "res/drawable-mdpi"
mkdir "res/drawable-xhdpi"
mkdir "res/drawable-xxhdpi"

for entry in "$dir"/*.png
do
  echo "$entry"

  extension="${entry##*.}"
  filename="${entry##*/}"
  name=$(echo $filename | cut -f 1 -d '.')

  new_name=$(echo $name | tr - _)

  convert $filename -resize '72x72' $new_name"temp."$extension
  mv $new_name"temp."$extension "res/drawable-hdpi"/$new_name"."$extension

  convert $filename -resize '36x36' $new_name"temp."$extension
  mv $new_name"temp."$extension "res/drawable-ldpi"/$new_name"."$extension

  convert $filename -resize '48x48' $new_name"temp."$extension
  mv $new_name"temp."$extension "res/drawable-mdpi"/$new_name"."$extension

  convert $filename -resize '96x96' $new_name"temp."$extension
  mv $new_name"temp."$extension "res/drawable-xhdpi"/$new_name"."$extension

  convert $filename -resize '192x192' $new_name"temp."$extension
  mv $new_name"temp."$extension "res/drawable-xxhdpi"/$new_name"."$extension
  
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