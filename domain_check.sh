#!/bin/bash

domain="https://www.flyzy2005.com"

#curl -I -s --connect-timeout 3 $domain
curl -f $domain

status=`echo $?`

if [ $status -ne 0 ]; then
	echo "domain cannot access!!"
else
	echo "domain access success"
fi
