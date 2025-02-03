#!/bin/bash

# Weather Reporting Task

# Extract and store the following data every day at noon, local time, for Casablanca, Morocco:
# - The actual temperature (in degrees Celsius)
# - The forecasted temperature (in degrees Celsius) for the following day at noon

# Grab weather data in json format and dump it into a file
curl "wttr.in/casablanca?format=j1" > weather-report.json

# Gathering relevant data points like date, observed temperature, and forecasted temperature
year="$(grep "date" weather-report.json | awk -F'"' '{print $4}' | awk -F'-' '{print $1}' | head -1)"
month="$(grep "date" weather-report.json | awk -F'"' '{print $4}' | awk -F'-' '{print $2}' | head -1)"
day="$(grep "date" weather-report.json | awk -F'"' '{print $4}' | awk -F'-' '{print $3}' | head -1)"

obs_temp="$(grep -w "tempC" weather-report.json | awk -F'"' '{print $4}' | head -5 | tail -1)"
fc_temp="$(grep -w "tempC" weather-report.json | awk -F'"' '{print $4}' | head -13 | tail -1)"

touch historical-data.txt
if (test -s historical-data.txt); then
    sed -i '$d' historical-data.txt
    echo "|   $year    |     $month     |    $day    |      $obs_temp       |      $fc_temp      |" >> historical-data.txt
    echo "+-----------+------------+----------+---------------+--------------+" >> historical-data.txt
else
	echo "+-----------+------------+----------+---------------+--------------+">> historical-data.txt
	echo "|   Year    |   Month    |   Day    |   Obs_Temp    |   Fc_Temp    |" >> historical-data.txt
	echo "+-----------+------------+----------+---------------+--------------+" >> historical-data.txt
	echo "|   $year    |     $month     |    $day    |      $obs_temp       |      $fc_temp      |" >> historical-data.txt
	echo "+-----------+------------+----------+---------------+--------------+" >> historical-data.txt
fi

# crontab -e
# 35 20 * * * /path/to/script.sh