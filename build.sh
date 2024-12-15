#!/bin/sh

set -xe

for line in $(cat wallets.txt); do
    label=$(echo $line | cut -d: -f1)
    address=$(echo $line | cut -d: -f2)
    qrencode --verbose -s 10 --background=00000000 --foreground=FFFFFFFF -o $label.png $address
done

inkscape -w 1024 --export-type="png" donate.svg
