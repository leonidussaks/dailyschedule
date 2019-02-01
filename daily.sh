#!/bin/bash
###############################
# author https://github.com/leonid0723
# 
# This project no license. Just... For fun ;)
###############################
# this settings file project.
# 
# rename USERNAME for your name
###############################
atrm $(atq|cut -f1)
echo "notify-send 'Oh! dailyschedule work! ;)' -i /home/USERNAME/dailyschedule/image/settings.png" | at now
#need to update the schedule
while true
	do 
	echo "notify-send 'time to sleep.' -i /home/USERNAME/dailyschedule/image/night.png" | at 1:00
	echo "notify-send 'time to sleep.' -i /home/USERNAME/dailyschedule/image/night.png" | at 4:00
	echo "notify-send 'time to take a break' -i /home/USERNAME/dailyschedule/image/break.png" | at 18:00
	echo "notify-send 'time to take a break' -i /home/USERNAME/dailyschedule/image/break.png" | at 22:00
	echo "notify-send 'good morning, programmer ;)' -i /home/USERNAME/dailyschedule/image/morning.png" | at 14:00
	#update and delete old dailyschedule
	sleep 86400
	atrm $(atq|cut -f1)
done
