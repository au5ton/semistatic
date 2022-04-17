#!/bin/bash
printenv | grep -v "no_proxy" >> /etc/environment
crond -f -l 8