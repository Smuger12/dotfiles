#!/bin/bash
# Simple bash script for checking updates in Arch Linux aka BtwOS

notify_time=8000 # in milliseconds

# Check if yay is installed
if [ -e /bin/yay ]; then
	update=$(yay -Qu | wc -l)
else
	update=$(pacman -Qu | wc -l)
fi

# Check language
if [ LANG=pl_PL.UTF-8 ]; then
	if [ $update -eq 0 ]; then
		notify-send "Sytem BtwOS jest w pełni aktualny!" --icon=update-notifier --app-name="Aktualizacje systemu" -t $notify_time
	else
		notify-send "Są dostępne nowe aktualizacje dla twojego systemu BtwOS!" "Liczba pakietów do zaktualizowania: $update" --icon=update-notifier --app-name="Aktualizacje systemu" -t $notify_time
	fi
else
	if [ $update -eq 0 ]; then
		notify-send "No updates available for BtwOS!" --icon=update-notifier --app-name="System updates" -t $notify_time
	else
		notify-send "New updates are available for BtwOS" "Number of packages to be upgraded: $update" --icon=update-notifier --app-name="System updates" -t $notify_time
	fi
fi
