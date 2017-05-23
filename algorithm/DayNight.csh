#!/bin/csh
set FIL1KM = $argv[1]
set DAY_SCANS = `$MODIS_DB_HOME/ncdump-drl -h ${FIL1KM} | grep "Number_of_Day_mode_scans" | awk  '{ print $3 }'`
#Self explained.
if ( ${DAY_SCANS} > 10 ) then
   set LIGHT = "DAY"
else
   set LIGHT = "NIGHT"
endif
echo "DayNightCheck = $LIGHT" > DayNightCheck.txt
