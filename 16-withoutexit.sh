#!/bin/bash

set -e 
ls -ltr
touch sample.tsxt

echo " before wrong command"
llsgsds

echo " after wrong command"
cd /tmp
cd /home/centos