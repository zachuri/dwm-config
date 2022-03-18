#!/bin/bash
temp=$(grep temp_F ~/.config/weather.txt | awk '{print $2}' | sed -e 's/\"//g' -e 's/,//'

echo "$temp"°
