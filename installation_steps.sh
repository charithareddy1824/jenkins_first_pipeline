#!/bin/bash
until [[-f /var/lib/cloud/instance/boot-finished]];do
sleep 1
done

apt-get update -y
apt-get install ngnix -y
service ngnix start