if [ $# -eq 2 ]; then
	if [ ! -d "$2" ]; then #In here we check if directory exists
		echo "There is no such directory!"
		exit
	fi
	cd $2 #If directory exists we change our directory
elif [ $# -eq 1 ]; then
	echo ""
else
	echo "Invalid Input!"
	exit
fi

for file in $(ls); do
	if [[ $file == *.txt ]]; then #If file is txt we check if wildcard word exist
		while read -a words; do
			for index in ${!words[@]}; do
				string=${words[index]}
				input=$1
				var=${input//'?'/*}
				if [[ $string == $1 ]] || [[ $string == *$1"." ]]; then #Word can be at end of the sentence so to be able to check that
					if [ $# -eq 2 ]; then 								#We add or condition here
						echo "The word \"$string\" inside $2/$file is substituted with  \"${string^^}\"." # If program runned with directory
					else																				#We print with directory
						echo "The word \"$string\" inside $file is substituted with  \"${string^^}\"."
					fi
					sed -i "s/$string/\U&/g" $file
				fi

			done
		done <$file #This loop goes for every file in current directory
	fi
done
