function fact {
    local f=$1
    local factorial=1

    for ((i=f; i>=1; i--))
    do
        factorial=$((factorial * i))
    done

    echo $factorial
}

fact $1
