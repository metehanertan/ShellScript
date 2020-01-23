LDelete() {
    for file in $(ls); do
        [ -f "$file" ] || continue
        size=$(wc -c <"$file")
        if [ $size = 0 ]; then
            printf "Do you want to delete $file (y/n): "
            read option
            if [ $option = "y" ]; then
                find $file -type f -size 0 -delete
            fi
        fi
    done
}

RDelete() {
    for dir in ls $(ls); do
        [ -d "$dir" ] || continue
        cd $dir
        LDelete
        cd ..
    done
}

if [ $# -eq 0 ]; then # No input part
    LDelete

elif [ $# -eq 1 ]; then

    if [ $1 == "-R" ]; then # -R Part without pathname
        RDelete
        LDelete

    elif [ $1 != "" ]; then # With pathname
        if [ -d "$1" ]; then
            cd $1
            LDelete
        else
            echo "Not a Directory"
            exit
        fi

    fi

elif [ $# -eq 2 ]; then

    if [ $1 != "" -a $2 == "-R" -a "$1" == -d ]; then #-R with pathname
        cd $1
        RDelete
        LDelete
    fi

else
    echo "Invalid input !!!!"
fi
