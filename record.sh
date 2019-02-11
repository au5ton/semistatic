#!/bin/sh

HOME_IP=$(curl --silent ifconfig.io)

echo "Detected home IP as: "$HOME_IP

# gandi dns update --ttl 1800 soot.pw navagnet A $HOME_IP 

if [ -z "$1" ]
then
	# if empty
	echo "usage: record.sh <domain> <subdomain>"
	exit 1
else
	echo "Domain supplied is: "$1
fi

if [ -z "$2" ]
then
	# if empty
	echo "usage: record.sh <domain> <subdomain>"
	exit 1
else
	 echo "A Record name supplied is: "$2
fi

echo "which gandi: "
if which gandi;
then
	echo "Gandi.cli found in path"
else
	echo "Gandi.cli not found in path!"
	exit 1
fi

gandi dns update --ttl 1800 $1 $2 A $HOME_IP
