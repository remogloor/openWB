#!/bin/bash

if [[ $sdm120modbussocketid != "none" ]]; then
		python /var/www/html/openWB/modules/sdm120modbusSocket/readsdm.py $sdm120modbussocketsource $sdm120modbussocketid
fi
