#!/bin/bash
###############################
# author https://github.com/leonid0723
# 
# This project no license. Just... For fun ;)
###############################
# this settings file project.
#                    text                                      image              time
# echo "notify-send 'test' -i /home/$USER/dailyschedule/images/settings.png" | at now
###############################
USER="leonid"
atrm $(atq|cut -f1)
echo "notify-send 'Oh! dailyschedule work! ;)' -i /home/$USER/dailyschedule/images/settings.png" | at now
#need to update the schedule
while true
	do 
	echo "notify-send 'time to sleep.' -i /home/$USER/dailyschedule/images/night.png" | at 1:00
	echo "notify-send 'time to sleep.' -i /home/$USER/dailyschedule/images/night.png" | at 4:00
	echo "notify-send 'time to take a break' -i /home/$USER/dailyschedule/images/break.png" | at 18:00
	echo "notify-send 'time to take a break' -i /home/$USER/dailyschedule/images/break.png" | at 22:00
	echo "notify-send 'good morning, programmer ;)' -i /home/$USER/dailyschedule/images/morning.png" | at 14:00
	#update and delete old dailyschedule
	sleep 86400
	atrm $(atq|cut -f1)
done
