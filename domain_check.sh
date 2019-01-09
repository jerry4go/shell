#!/bin/bash

# command expamle

# sh domain_check.sh https://www.flyzy2005.com https_proxy=119.101.113.166:9999

# if paramater $2 is exist ,use the proxy.if not ,use loacl.

if [ -n "$2" ];then

	proxy=$2

	export $proxy

else

	source /etc/profile

fi

domain=$1

#curl -I -s --connect-timeout 3 $domain
curl -I -f --connect-timeout 3 $domain

status=`echo $?`

if [ $status -ne 0 ]; then
	echo "domain cannot access!!"
else
	echo "domain access success"
fi
