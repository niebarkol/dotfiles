#!/usr/bin/env bash

# Current Theme
dir="$HOME/.config/tofi/powermenu"
theme='powermenu-config'

# CMDs
uptime="`uptime -p | sed -e 's/,//' -e 's/up //g' -e 's/0 minutes/min/' \
	-e 's/ hours/h/' -e 's/ minutes/min/' -e 's/ minute/min/' -e 's/ hour/h/'`"
# host=`hostname`

# Options
shutdown=''
reboot=''
lock=''
suspend=''
logout='󰍃'
yes='󰄴'
no='󰅚'

# Tofi CMD
tofi_cmd() {
	tofi \
    --num-results 5 \
    -c $dir/$theme \
		--prompt-text ""  
}

# Confirmation CMD
confirm_cmd() {
	tofi \
    --num-results 2 \
		-c ${dir}/${theme} \
    --width 19% \
    --selection-background=#a6e3a1 \
    --prompt-text ""
  }

# Ask for confirmation
confirm_exit() {
	echo -e "$yes\n$no" | confirm_cmd
}

# Pass variables to tofi dmenu
run_tofi() {
	printf "$lock\n$suspend\n$logout\n$reboot\n$shutdown" | tofi_cmd
}

# Execute Command
run_cmd() {
	selected="$(confirm_exit)"
	if [[ "$selected" == "$yes" ]]; then
		if [[ $1 == '--shutdown' ]]; then
			systemctl poweroff
		elif [[ $1 == '--reboot' ]]; then
			systemctl reboot
		elif [[ $1 == '--suspend' ]]; then
		#	mpc -q pause
			systemctl suspend
		#	swaylock
		elif [[ $1 == '--logout' ]]; then
			hyprctl dispatch exit
		fi
	else
		exit 0
	fi
}

# Actions
chosen="$(run_tofi)"
case ${chosen} in
    $shutdown)
		run_cmd --shutdown
        ;;
    $reboot)
		run_cmd --reboot
        ;;
    $lock)
	    	#sleep 0.5
	        hyprlock
        ;;
    $suspend)
		run_cmd --suspend
        ;;
    $logout)
		run_cmd --logout
        ;;
esac
