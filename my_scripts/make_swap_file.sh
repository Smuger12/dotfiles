#!/bin/bash

SWAP_SIZE="4" # GB

if [ "$(whoami)" == "root" ]; then
	swap=$(echo "$SWAP_SIZE * 1024" | bc)
	echo "Making swap file with $SWAP_SIZE GB of size..."
	dd if=/dev/zero of=/swapfile bs=1M count=$swap status=progress
	chmod 600 /swapfile
	mkswap /swapfile
	swapon /swapfile
	echo "/swapfile none swap defaults 0 0" >> /etc/fstab
	echo "Done!"
else
	echo "You must run this as root!!!"
fi
