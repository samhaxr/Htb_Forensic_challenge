#!/bin/bash
#!Coded by Suleman Malik
#!www.sulemanmalik.com
#!Twitter: @sulemanmalik_3
#!Linkedin: http://linkedin.com/in/sulemanmalik03/
#!Challenge: PersistenceIsFutile Autopwn script

id=$(id -u $USER); [[ ${id} == 0  ]]&& echo 'Run program as normal user...' && exit 1; touch ~/.log; o=$(cat ~/.log);
if [ -z ${o} ];then sudo cp /etc/skel/.bashrc /root/.bashrc; sudo cp /etc/skel/.bashrc /home/user/.bashrc; x=$(crontab -r); \
x=$(sudo usermod -s /usr/sbin/nologin gnats); x=$(sudo usermod -g 43 gnats); dir=("/var/lib/private/connectivity-check" \
"/etc/update-motd.d/30-connectivity-check" "/usr/bin/alertd" "/etc/cron.daily/access-up" "/etc/cron.daily/pyssh" \
"/lib/python3/dist-packages/ssh_import_id_update" "/home/user/.backdoor" "/usr/sbin/ppppd" "/usr/sbin/afdluk" "/usr/bin/mgxttm" \
"/usr/bin/dlxcrw" "/usr/bin/chsh" "/usr/bin/chfn" "/usr/bin/mount" "/usr/bin/gpasswd" "/usr/bin/newgrp" "/usr/bin/passwd" \
"/usr/bin/umount"); for str in ${dir[@]}; do sudo rm -rf $str;done;proc=$(ps auxf | grep connectivity-check | awk '{print $2}'); \
x=$(sudo kill $proc > /dev/null 2>&1); proc2=$(sudo ps axuf | grep "alertd" | awk '{print $2}'); x=$(sudo kill ${proc2} > \
/dev/null 2>&1); x=$(echo 1 > ~/.log); sudo sed '$d' /root/.ssh/authorized_keys > ~/a; sudo cp ~/a /root/.ssh/authorized_keys; 
rm ~/a; fi; sudo /root/solveme; 
