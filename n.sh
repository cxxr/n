#
# n.sh
#
# iterates over files N lines at a time
#
# Sean Cassidy <sean.a.cassidy@gmail.com>
#
#

STATE_FILE="$HOME/.nstate"

n() {
    INCREMENT=10
    if [ -r "$1" ]; then
        LINE=0
        FILE=$1
    else
        LINE=`cut -f 1 $STATE_FILE`
        FILE=`cut -f 2 $STATE_FILE`

        if [ -n "$1" ]; then
            # Test for number
            case $1 in
                ''|*[!0-9]*) 
                    echo "Invalid argument to n"
                    return 2
                ;;
                *)
                    INCREMENT=$1
                ;;
            esac
        fi
    fi


    HEAD_LEN=$(($LINE + $INCREMENT))

    head -n $HEAD_LEN $FILE | tail -n $INCREMENT

    echo -e "$HEAD_LEN\t$FILE" > $STATE_FILE
}
