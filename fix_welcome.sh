#!/bin/bash
# AutoKaaj Permanent Rebranding Script
rm -f /etc/motd
echo "Welcome to AutoKaaj AI Environment!" > /etc/motd
sed -i 's/UserLAnd/AutoKaaj AI/g' /home/cm/.bashrc
sed -i 's/Welcome to Ubuntu in UserLAnd!//g' /home/cm/.bashrc
clear
