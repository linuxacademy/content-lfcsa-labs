#!/bin/bash
# Extract timestamp and the 1, 5, and 15 minute load averages from the uptime command
uptime | tr ',' ' ' | tr -s ' ' | cut -d' ' -f2,10,11,12 >> /var/log/loadavg.log
# Send output of uptime to tr to translate commas to spaces
# Send that output to tr to squeeze out duplicate spaces
# Send that to cut to extract the 2, 10, 11, and 12th fields as delimited by spaces
# Append the output the /var/log/loadavg.log
