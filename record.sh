#!/bin/sh

HOME_IP=$(curl --silent ifconfig.io)

echo "Detected home IP as: "$HOME_IP
