#!/bin/bash

if [ "$(whoami)" == "root" ]; then
	echo 'NoDisplay=true' >> /usr/share/applications/qv4l2.desktop
	echo 'NoDisplay=true' >> /usr/share/applications/qvidcap.desktop
	echo 'NoDisplay=true' >> /usr/share/applications/avahi-discover.desktop
	echo 'NoDisplay=true' >> /usr/share/applications/bssh.desktop
	echo 'NoDisplay=true' >> /usr/share/applications/bvnc.desktop
	echo 'NoDisplay=true' >> /usr/share/applications/fish.desktop
	echo 'NoDisplay=true' >> /usr/share/applications/micro.desktop
	echo 'NoDisplay=true' >> /usr/share/applications/lstopo.desktop
	#echo 'NoDisplay=true' >> /usr/share/applications/htop.desktop
	echo "All Done!"
else
	echo "You must run this as root!!!"
fi
