#!/bin/sh
#
# ufetch-arch - tiny system info for arch

## INFO

# user is already defined
host="$(cat /etc/hostname)"
os='Arch'
kernel="$(uname -sr)"
uptime="$(uptime -p | sed 's/up //')"
packages="$(pacman -Q | wc -l)"
shell="$(basename "$SHELL")"

## UI DETECTION

if [ -n "${DE}" ]; then
	ui="${DE}"
	uitype='de'
elif [ -n "${WM}" ]; then
	ui="${WM}"
	uitype='wm'
elif [ -n "${XDG_CURRENT_DESKTOP}" ]; then
	ui="${XDG_CURRENT_DESKTOP}"
	uitype='de'
elif [ -n "${DESKTOP_SESSION}" ]; then
	ui="${DESKTOP_SESSION}"
	uitype='de'
elif [ -f "${HOME}/.xinitrc" ]; then
	ui="$(tail -n 1 "${HOME}/.xinitrc" | cut -d ' ' -f 2)"
	uitype='wm'
elif [ -f "${HOME}/.xsession" ]; then
	ui="$(tail -n 1 "${HOME}/.xsession" | cut -d ' ' -f 2)"
	uitype='wm'
else
	ui='unknown'
	uitype='UI'
fi

## DEFINE COLORS

# probably don't change these
if [ -x "$(command -v tput)" ]; then
	bold="$(tput bold)"
	black="$(tput setaf 0)"
	red="$(tput setaf 1)"
	green="$(tput setaf 2)"
	yellow="$(tput setaf 3)"
	blue="$(tput setaf 4)"
	magenta="$(tput setaf 5)"
	cyan="$(tput setaf 6)"
	white="$(tput setaf 7)"
	reset="$(tput sgr0)"
fi

# you can change these
lc="${reset}${bold}${blue}"         # labels
nc="${reset}${bold}${blue}"         # user and hostname
ic="${reset}"                       # info
c0="${reset}${blue}"                # first color

## OUTPUT

cat <<EOF

${c0}        /\\         ${nc}${USER}${ic}@${nc}${host}${reset}
${c0}       /  \\        ${lc}distro:    ${ic}${os}${reset}
${c0}      /\\   \\       ${lc}kernel:    ${ic}${kernel}${reset}
${c0}     /  __  \\      ${lc}uptime:    ${ic}${uptime}${reset}
${c0}    /  (  )  \\     ${lc}packages:  ${ic}${packages}${reset}
${c0}   / __|  |__\\\\    ${lc}shell:     ${ic}${shell}${reset}
${c0}  /.\`        \`.\\   ${lc}${uitype}:        ${ic}${ui}${reset}

EOF
