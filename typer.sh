#!/bin/bash
echo "Please Enter Username to proceed..." | pv -qL 10
sleep 0.5
read Username
echo "Please Enter Root # Password to authenticate..." | pv -qL 10
read Password
sleep 2
echo ___________________________________

if [[ $Username == "$Username" && $Password == "$Username" ]];
then
sleep 2
echo "Authenticating Your Information please wait..." | pv -qL 10
echo "______________________________" | pv -qL 10
# Function to display a progress bar
function show_progress() {
  local current=$1
  local total=$2
  local percentage=$((current * 100 / total))
  local progress=$((current * 50 / total))
  local rest=$((50 - progress))
  printf "\r[%-${progress}s>>%${rest}s] %d%%" '' '' "$percentage"
}

for i in $(seq 1 10); do
  show_progress $i 10
  sleep 1
done

# Clean up progress bar
printf "\n"
echo "......................" | pv -qL 10
echo "Authentication Confirmed Status: True,Welcome $Username to Bash scripting." | pv -qL 10
echo ______________
echo "******Author: Onesmus Karema******
Designed ******By: Bash script******
Date For: ******Mon-April-23*******" | pv -qL 10
else
echo "Sorry $Username Authentication was Invalid Access denied.." | pv -qL 10
echo "_______________________________" | pv -qL 10
fi
