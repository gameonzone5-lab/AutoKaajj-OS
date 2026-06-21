#!/bin/bash
sed -i 's/Welcome to Ubuntu in UserLAnd!/Welcome to AutoKaaj AI Environment!/g' /etc/motd
sed -i 's/Welcome to [a-zA-Z]* in UserLAnd!/Welcome to AutoKaaj AI Environment!/g' /home/*/.bashrc
sed -i 's/UserLAnd/AutoKaaj AI/g' /home/*/.bashrc
