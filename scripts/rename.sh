: '
Exercise_12 - Write the script that renames files based on
the file extension.

Next,It should ask the user what prefix to
prepend to the file name(s)
By default, the prefix should be the
current date in YYYY-MM-DD format.
If the user simply press enter,the current date will be used.
Otherwise,whatever the user
entered will be used as the prefix. Next,it should display the
original file nam
'
currentDate=$(date +%F)
echo $currentDate

read -ep $'Please insert the sufix name: ' filesufix
read -ep $'Please insert the new file prefix name: ' newfilename
#fversion=1
for f in *.$filesufix
do
    [ -f "$f" ] && mv -v "$f" "${currentDate}_${newfilename}_${f}.${filesufix}"
    #fversion=$(($fversion+1))
    #echo "this $f file was changed to ${newfilename}.$filesufix "
done

# mv -- "$f" "${f%.txt}.text"
