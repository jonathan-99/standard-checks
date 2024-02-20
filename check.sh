#!/bin/bash
set -eu -o pipefail # fail on error and report it, debug all lines

sudo -n true
test $? -eq 0 || exit 1
# "you should have sudo privilege to run this script"

echo This will check various things....

# sudo apt update, apt-get update, apt upgrade --fix-missing, and catch errors.

echo Pinging....
# ping internal 
internal_array=$(ping -c 2 192.168.0.1 | awk '{print $1}')
# incude a ping to 1.1.1.1

# install ufw and configure

# install and configure zabbix agent

# ping external
internal_array=$(ping -c 2 8.8.8.8 | awk '{print $1}')

# route checking
route=$(route -n | awk '{print $1}')
## route default gw 192.168.1.1 eth0
## route add 192.168.1.0

# check date (pull in from ansible script and compare

# iptables checking
iptables=$(cat /etc/sysctl.conf | awk '{print $1}')

# is ipv6 disabled: ufw, interfaces (/etc/network/interfaces), hosts (/etc/hosts),

# check hostname and compare with something?
echo This is your device name?
hostname=$(cat $hostname)
hosts_file=$(cat /etc/hosts | awk '{print $1}')

# check ipconfig
echo Ip address
ipaddress=$(ifconfig | awk '{print $1}')


# ufw status
echo Is Unified Fire Wall status and setting
ufw=$(ufw status | awk '{print $1}')

# crontab status
echo Crontab setup
crontab=$(cat /etc/crontab | awk '{print $1}')

# check the difference between passwords and shadow.
echo Password file checking
shadow_check=$(cat /etc/shadow | awk '{print $1}')
password_check=$(cat /etc/passd | awk '{print $1}')

# update and upgrade

# what's running?
processes=$(ps -aux | egrep -i 'RUNNING' | awk '{print $1}')

# what's in the logging: /var/log..., 
