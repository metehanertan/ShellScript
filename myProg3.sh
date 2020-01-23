
if ! [[ "$1" =~ ^[0-9]+$ ]]
    then
        echo "Enter a valid num!!!"
	exit
fi

if ! [[ "$2" =~ ^[0-9]+$ ]]
    then
        echo "Enter a valid num!!!"
	exit
fi

declare -i de
de=($1-$2)%2
if [ $de -eq 0 -a $2 -lt $1 ]
then

    echo
    #first full part
    for (( i=0; i<($1-$2)/2; i++ ))
    do  
        for (( x=0; x<$1; x++ ))
       do  
           printf "*"
       done
       echo
    done

    #second part where there are spaces
    for (( i=0; i<$2; i++ ))
    do  
      for (( x=0; x<($1-$2)/2; x++ ))
      do  
          printf "*"
      done

     for (( y=0; y<$2; y++ ))
      do  
         printf " "
     done

     for (( x=0; x<($1-$2)/2; x++ ))
      do  
          printf "*"
      done

      echo
    done

    #third ending full part
    for (( i=0; i<($1-$2)/2; i++ ))
    do  
       for (( x=0; x<$1; x++ ))
       do  
           printf "*"
      done
      echo
    done

    echo

else
    echo "Enter a valid num!!!"
fi
