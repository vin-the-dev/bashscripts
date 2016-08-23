#!/bin/bash
echo "Hello World"
cd "$(dirname "$0")"

#declare -a arr
#
#arr["key1"]=val1
#
#echo $arr["key1"]
#    echo "------"
#
#arr+=( ["key2"]=val2 ["key3"]=val3 )
#
#for key in ${!arr[@]}; do
#    echo ${key} ${arr[${key}]} "--"
#    echo "---"
#done

declare -a arr=(
"icon-29.png"
"icon-29@2x-1.png"
"icon-29@2x.png"
"icon-29@3x.png"
"icon-30.png"
"icon-40.png"
"icon-40@2x-1.png"
"icon-40@2x.png"
"icon-40@3x.png"
"icon-50.png"
"icon-50@2x.png"
"icon-57.png"
"icon-57@2x.png"
"icon-60@2x.png"
"icon-60@3x.png"
"icon-72.png"
"icon-72@2x.png"
"icon-76.png"
"icon-76@2x.png"
"icon-83.5@2x.png"
)

declare -a arrSize=(
"29"
"58"
"58"
"87"
"30"
"40"
"80"
"80"
"120"
"50"
"100"
"57"
"114"
"120"
"180"
"72"
"144"
"76"
"152"
"167"
)

echo "Total files in array : ${#arr[*]}"
total=${#arr[*]}

echo "Second filename: ${arrSize[1]}"

for (( i=0; i<=$(( $total -1 )); i++ ))
do
    echo -n "${arr[$i]}"
    echo -n "${arrSize[$i]}"

	cp "icon.png" "${arr[$i]}"
	sips -Z "${arrSize[$i]}" "${arr[$i]}"
done

#for i in "${arr[@]}"
#do
#   echo "$i"
#   echo "{$i}"
#   # or do whatever with individual #element of the array
#	#cp "icon.png" "$i"
#	#sips -Z 29 "$i"
#done
