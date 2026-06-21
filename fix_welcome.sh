#!/bin/bash
# একদম ফিক্সড ব্র্যান্ডিং
clear
# সব পুরোনো মেসেজ ফাইল মুছে ফেলা
rm -f /etc/motd
rm -f /etc/issue
# নতুন ব্র্যান্ড মেসেজ সেট করা
echo "Welcome to AutoKaaj AI Environment!" > /etc/motd
# ইউজারল্যান্ড সংক্রান্ত সব টেক্সট মুছে ফেলা
sed -i '/UserLAnd/d' /home/cm/.bashrc 2>/dev/null
sed -i '/Welcome to Ubuntu/d' /home/cm/.bashrc 2>/dev/null
# টার্মিনাল প্রম্পট সেট করা
export PS1="AutoKaaj:~\$ "
clear
