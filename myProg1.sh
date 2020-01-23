echo
check=$@

#reverses all the input taken
for i in $(seq 0 ${#check}); do
	revcheck=${check:$i:1}$revcheck
done

#checks revers with the given input
check=${check^^}
revcheck=${revcheck^^}
if [[ $check == $revcheck ]]; then
	echo "$@ is a palindrome."
else
	echo "$@ is not a palindrome."
fi
