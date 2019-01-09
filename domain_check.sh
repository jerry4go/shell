#!/bin/bash

domain=$1

#curl -I -s --connect-timeout 3 $domain
curl -I -f --connect-timeout 3 $domain

status=`echo $?`

if [ $status -ne 0 ]; then
	echo "domain cannot access!!"
else
	echo "domain access success"
fi
