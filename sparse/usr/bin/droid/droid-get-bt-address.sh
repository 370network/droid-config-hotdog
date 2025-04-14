#!/bin/sh
# On the OnePlus 7T Pro, /var/lib/bluetooth contains a directory with the bluetooth device's board address as it's name,
# so get that value and put it in /var/lib/bluetooth/board-address.
find /var/lib/bluetooth -maxdepth 1 -iname '*:*:*:*:*:*' | cut -d/ -f 5 > /var/lib/bluetooth/board-address
