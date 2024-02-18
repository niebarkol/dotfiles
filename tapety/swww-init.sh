#!/bin/sh
#

if ! pgrep -x swww-daemon > /dev/null; then
	swww init
#	echo "swww nie wykryto, uruchamianie"
#else
#	echo "swww dziala poprawnie, nie uruchamianie go"
fi

#nie mam pojęcia czemu to działa; ale działa, więc nie tykam
#na moje usprawiedliwienie to mój pierwszy skrypt w bashu
hyprlayer_status="$(hyprctl layers | grep "swww")"
while [[ -z hyprlayer_status ]]
do
#	echo $hyprlayer_status
	sleep 0.1
done


img="$(find ~/tapety/cool-tapety/ -type f | shuf -n 1)"

swww img "$img" -t none

#echo "Ustawiono tapete na $img"
