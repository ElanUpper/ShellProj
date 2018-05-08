#/bin/bash

if [ $UID <> 0 ]; then
  echo 'you have no right to execute this shell!';
  exit 0;
fi

dateStr=$(date +%Y-%m-%d)
timeStr=$(date +%H:%M:%S)
echo "current date: " $dateStr " current time:", $timeStr
printf 'user\tclient\tIP\n'
list=`w -h | awk '{print $1, $2, $3}'`
echo "$list"
echo 'current system run'  `uptime | awk '{print $3 $4 $5 $6}' | sed 's/,/ /'`
