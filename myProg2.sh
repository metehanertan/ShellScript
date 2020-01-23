if [ $# -eq 0 ]; then
    echo "A directory named cprogs is created under current working directory."
    echo "All the files whose name ends with .c in the current working directory are moved into cprogs directory."
    mkdir -p cprogs
    mv *.c cprogs
elif [ $# -eq 1 ]; then
    if [ ! -d "$1" ]; then #In this if we check if the directory existst.
        echo "There is no such directory!"
        exit
    fi
    echo "A directory named cprogs is created under $1 ."
    echo "All the files whose name ends with .c in $1 moved into cprogs directory."
    mkdir -p $1/cprogs
    cd $1
    mv *.c cprogs
else
    echo "Invalid input"
    exit
fi
