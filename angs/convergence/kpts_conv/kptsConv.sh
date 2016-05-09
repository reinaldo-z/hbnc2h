#!/bin/bash

kpts=( 452 802 1252 1802 2452 3202 5002 6052 7202 )

for i in ${kpts[@]}; do
    START=$(date)

    run_tiniba.sh -r run -k "$i" -N 0 -x 2 -C 6 -P 1382 -w -e -p -s
    run_tiniba.sh -r erase
    all_responses.sh -w total -m "$i"_40-spin -s 0 -o 1 -v 18 -c 18 -r 1 -t "xx yy zz"
    all_responses.sh -w total -m "$i"_40-spin -s 0 -o 1 -v 18 -c 18 -r 3 -t "xxy yxy zxy"
    all_responses.sh -w total -m "$i"_40-spin -s 0 -o 1 -v 18 -c 18 -r 41 -t "xxy yxy zxy"

    END=$(date)
    ssh cassandra "echo -e 'Calculations completed for $i kpts\nStarted at $START \nFinished at $END \n\nArray of ktps: \n${kpts[@]} ' | mail -s '$i kpts' reychino@gmail.com"
done
