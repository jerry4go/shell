#!/bin/bash


if [ -z "$1" ];then

usage="usage: sh network_check.sh domain/ip port"

echo -e "\033[31m\033[01m[ $usage ]\033[0m"

exit 0;

fi


# check icmp and tcp is alive or not

# install the tools

tcping -h > /dev/null 2>&1
status1=$?
fping -v > /dev/null 2>&1
status2=$?
dig -v > /dev/null 2>&1
status3=$?


# check the command return code,if equal 127,then is mean the command not found.

if [[ $status1 -eq 127 || $status2 -eq 127 || $status3 -eq 127 ]]; then

	yum install -y epel-release
	yum install -y fping tcping bind-utils

fi

# check the pramater $2 is exist or not,if not ,use the default value 80.

if [ -n "$2" ];then

	port=$2

else

	port=80

fi

domain=$1

icmp=`fping $domain`

tcp=`tcping -t 1 $domain $port`

dns=`dig $domain |grep -A 5 'ANSWER SECTION'`

# yellow
echo -e "\033[33m\033[01m[ $icmp ]\033[0m"

# green
echo -e "\033[32m[ $tcp ]\033[0m"

# blue
echo -e "\033[34m[ $dns ]\033[0m"







