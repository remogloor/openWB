#!/bin/bash

if [[ $pvwattmodul != "none" ]]; then
	pvwattold=$(</var/www/html/openWB/ramdisk/pvwatt)
fi
if  [[ $e3dc2ip != "none" ]]; then
	python /var/www/html/openWB/modules/speicher_e3dc/e3dcfarm.py $e3dcip $e3dc2ip 
else
	python /var/www/html/openWB/modules/speicher_e3dc/e3dc.py $e3dcip $e3dcextprod
fi
if [[ $pvwattmodul != "none" ]]; then
	pvwatt=$(</var/www/html/openWB/ramdisk/pvwatt)
	newpvwatt=$(( pvwattold + pvwatt ))
	echo $newpvwatt > /var/www/html/openWB/ramdisk/pvwatt
fi
