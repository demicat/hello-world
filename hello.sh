#!/usr/bin/bash
NUM_COLORS=8

COLS=5
ROWS=20

count=0
for i in `seq 1 $(($ROWS * $COLS))`; do
    color=`tput setaf $((count % $NUM_COLORS))`
    echo -n "${color}hello worrld! "
    if [[ $((count % $COLS)) -eq $(($COLS-1)) ]]; then
	echo
    fi
    count=$((count+1))
done
