#!/bin/bash

while :; do
   # Ask the user for the wanted func
   clear
   echo "     Furkan KUSE - Metehan ERTAN"
   echo "-------------------------------------"
   echo "             Main Menu"
   echo "-------------------------------------"
   echo "Please select an option:"
   echo "1.Check for palindromes"
   echo "2.Move .c files"
   echo "3.Draw hollowed square"
   echo "4.Uppercase conversion"
   echo "5.Delete files"
   echo "6.Exit"
   echo "===================================="
   printf "Enter your menu choice [1-6]: "
   read funcNum

   case $funcNum in
   1)
      clear
      echo "-------------------------------------"
      echo "      Checking for Palindromes"
      echo "-------------------------------------"
      printf "Enter the word you want to check:"
      read word
      sh ./myProg1.sh $word
      read
      ;;

   2)
      clear
      echo "-------------------------------------"
      echo "         Moving .c Files"
      echo "-------------------------------------"
      printf "Enter a directory (can be none):"
      read path
      sh ./myProg2.sh $path
      read
      ;;

   3)
      clear
      echo "-------------------------------------"
      echo "      Drawing Hollowed Square"
      echo "-------------------------------------"
      echo "Enter the to number for square:"
      echo "First number:"
      read -a x
      input1=${x[0]}
      echo "Second number:"
      read -a y
      input2=${y[0]}
      sh ./myProg3.sh $input1 $input2
      read
      ;;

   4)
      clear
      echo "-------------------------------------"
      echo "       Uppercase conversion"
      echo "-------------------------------------"
      echo "Enter a wildcard and an optional pathname:"
      read -p "Wildcard:" wildcard
      read -p "Pathname:" pathname
      sh ./myProg4.sh $wildcard $pathname
      read
      ;;
   5)
      clear
      echo "-------------------------------------"
      echo "            Delete files"
      echo "-------------------------------------"
      echo "Enter an optional pathname and a -R option:"
      read -p "Pathname:" path
      read -p "-R option:" option
      sh ./myProg5.sh $path $option
      read
      ;;
   6)
      clear
      break
      read
      ;;
   *)
      echo "INVALID INPUT!!!"
      read
      ;;
   esac
done
