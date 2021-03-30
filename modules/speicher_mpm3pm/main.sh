#!/bin/bash

if (( speicherkitversion == 1 )); then
	python /var/www/html/openWB/modules/speicher_mpm3pm/readsdm120.py 
else
	python /var/www/html/openWB/modules/speicher_mpm3pm/readmpm3pm.py 
fi

 


