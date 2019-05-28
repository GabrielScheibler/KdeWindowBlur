#! /bin/bash
while true; do
    sleep 0.5
    
    x=5
    t=$(xprop -root _NET_CLIENT_LIST | cut -d ' ' -f $x | cut -d ',' -f 1)
    while [ ! -z "$t" ]; do
        xprop -id "$t" -f _KDE_NET_WM_BLUR_BEHIND_REGION 32c -set _KDE_NET_WM_BLUR_BEHIND_REGION 0
        set -u
        x=$((x+1))
        t=$(xprop -root _NET_CLIENT_LIST | cut -d ' ' -f $x | cut -d ',' -f 1)
    done
done
