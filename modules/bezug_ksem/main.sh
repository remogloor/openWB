#!/bin/bash
python /var/www/html/openWB/modules/bezug_ksem/readksem.py $ksemip

wattbezug=$(</var/www/html/openWB/ramdisk/wattbezug)
echo $wattbezug
