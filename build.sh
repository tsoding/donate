#!/bin/sh -xe

QROPTS="--verbose --background=00000000 --foreground=FFFFFFFF"

xargs -a wallets.txt -P4 -n1 -- /usr/bin/env QROPTS="$QROPTS" sh -c '
    label="${1%%:*}"; address="${1#*:}";
    qrencode -t SVG --svg-path-width=1024 $QROPTS -o "$label.svg" "$address"
    qrencode -s 10 $QROPTS -o "$label.png" "$address"
' _
