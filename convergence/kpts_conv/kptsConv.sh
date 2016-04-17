#!/bin/bash

kpts=( 452 802 1252 1802 2452 3202 5002 6052 7202 )

for i in ${kpts[@]}; do
    run_tiniba.sh -r run -k "$i" -N 0 -x 2 -C 6 -P 1382 -w -e -p -s
    ssh cassandra "echo -e 'Calculations completed for $i kpts \n\nArray of ktps: \n${kpts[@]} ' | mail -s '$i kpts' reychino@gmail.com"
done
