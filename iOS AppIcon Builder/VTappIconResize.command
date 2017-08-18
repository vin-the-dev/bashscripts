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
"iconx29.png"
"iconx40.png"
"iconx58-1.png"
"iconx58.png"
"iconx76.png"
"iconx80-1.png"
"iconx80.png"
"iconx87.png"
"iconx120-1.png"
"iconx120.png"
"iconx152.png"
"iconx167.png"
"iconx180.png"
)

declare -a arrSize=(
"29"
"40"
"58"
"58"
"76"
"80"
"80"
"87"
"120"
"120"
"152"
"167"
"180"
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
