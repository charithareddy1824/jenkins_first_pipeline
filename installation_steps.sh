#!/bin/bash
until [[-f /var/lib/cloud/instance/boot-finished]];do
sleep 1
done

sudo apt update -y
sudo apt install ngnix -y
sudo service ngnix start