#!/bin/bash

if [[ $evsesources2 = *virtual* ]]
then
	if ps ax |grep -v grep |grep "socat pty,link=$evsesources2,raw tcp:$evselanips2:26" > /dev/null
	then
		echo "test" > /dev/null
	else
		socat pty,link=$evsesources2,raw tcp:$evselanips2:26 &
	fi
else
	echo "echo" > /dev/null
fi
python /var/www/html/openWB/modules/mpm3pmlls2/readmpm3pm.py $mpm3pmlls2source $mpm3pmlls2id



