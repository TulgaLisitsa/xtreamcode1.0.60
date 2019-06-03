#!/bin/bash
#
cumbia='\e[40;38;5;82m' #COLOR
echo " "
echo -e "${cumbia} ┌──────────────────────────────────────────┐ \e[0m"
echo -e "${cumbia} │                APUNTESPLOX               │ \e[0m"
echo -e "${cumbia} └──────────────────────────────────────────┘ \e[0m"
echo " "
apt-get update && apt-get upgrade -y
apt-get install apache2 -y
apt-get install lsb-release nscd curl php5 php5-mysql php5-cli php5-curl unzip unrar -y && apt-get install php5-mcrypt -y &&  php5enmod mcrypt
service apache2 restart
wget https://github.com/Alplox/xtreamcode1.0.60/raw/master/DLM.part7.rar
wget https://github.com/Alplox/xtreamcode1.0.60/raw/master/DLM.part6.rar
wget https://github.com/Alplox/xtreamcode1.0.60/raw/master/DLM.part5.rar
wget https://github.com/Alplox/xtreamcode1.0.60/raw/master/DLM.part4.rar
wget https://github.com/Alplox/xtreamcode1.0.60/raw/master/DLM.part3.rar
wget https://github.com/Alplox/xtreamcode1.0.60/raw/master/DLM.part2.rar
wget https://github.com/Alplox/xtreamcode1.0.60/raw/master/DLM.part1.rar
unrar x DLM.part1.rar
#
cp -R /home/ubuntu/DLMc/DLM.rar  /var/www/html/ && cd /var/www/html && unrar x DLM.rar
cp /var/www/html/DLM/downloads/iptv_panel_pro.zip /tmp/
chmod a+x /tmp/iptv_panel_pro.zip
cd /var/www/html/DLM/downloads/
unzip /var/www/html/DLM/downloads/install_iptv_pro.zip 
cp install_iptv_pro.php /root/
cd /root/ && chmod a+x /root/install_iptv_pro.php
#
#
echo " "
echo -e "${cumbia} ┌──────────────────────────────────────────┐ \e[0m"
echo -e "${cumbia} │        LICENCIA: 3d5b0f8e468c332         │ \e[0m"
echo -e "${cumbia} └──────────────────────────────────────────┘ \e[0m"
echo " "
#
php install_iptv_pro.php
#
echo " "
echo "####################################################################################"
echo " "
echo "                     La licencia ya está instalada!                      "
echo " "
echo "####################################################################################"
echo " "
#

echo 1 > /proc/sys/net/ipv4/ip_forward
#
/sbin/iptables -t nat -I OUTPUT --dest 149.202.206.51/28 -j DNAT --to-destination 127.0.0.1
/sbin/iptables -t nat -I OUTPUT --dest 123.103.255.80/28 -j DNAT --to-destination 127.0.0.1
/sbin/iptables -t nat -I OUTPUT --dest 62.210.244.112/28 -j DNAT --to-destination 127.0.0.1
/sbin/iptables -t nat -I OUTPUT --dest 185.73.239.0/28 -j DNAT --to-destination 127.0.0.1
/sbin/iptables -t nat -I OUTPUT --dest xtream-codes.com/28 -j DNAT --to-destination 127.0.0.1
/sbin/iptables -t nat -I OUTPUT --dest 119.249.54.71/28 -j DNAT --to-destination 127.0.0.1
/sbin/iptables -t nat -I OUTPUT --dest 38.30.65.218/28 -j DNAT --to-destination 127.0.0.1
/sbin/iptables -t nat -I OUTPUT --dest 221.194.47.224/28 -j DNAT --to-destination 127.0.0.1
/sbin/iptables -t nat -I OUTPUT --dest 218.65.30.38/28 -j DNAT --to-destination 127.0.0.1
/sbin/iptables -t nat -I OUTPUT --dest 116.31.116.34/28 -j DNAT --to-destination 127.0.0.1
/sbin/iptables -t nat -I OUTPUT --dest 91.197.232.109/28 -j DNAT --to-destination 127.0.0.1
/sbin/iptables -t nat -I OUTPUT --dest 121.18.238.104/28 -j DNAT --to-destination 127.0.0.1
/sbin/iptables -t nat -I OUTPUT --dest 221.194.44.195/28 -j DNAT --to-destination 127.0.0.1
/sbin/iptables -t nat -I OUTPUT --dest 185.73.239.7/28 -j DNAT --to-destination 127.0.0.1
#
echo " BLOQUEO SSH "
sudo /sbin/iptables -I INPUT -s 119.249.54.71 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 119.249.54.71 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 38.30.65.218 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 221.194.47.224 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 218.65.30.38 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 116.31.116.34 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 91.197.232.109 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 121.18.238.104 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 221.194.44.195 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 149.202.206.51 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 123.103.255.80 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 123.103.255.87 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 62.210.244.112 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.73.239.0 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.73.239.7 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s xtream-codes.com -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 104.20.86.174 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 149.202.206.51 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 54.208.22.70 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 51.206.202.149 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.73.239.7 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 94.23.120.89 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 104.18.44.225 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 37.59.239.66 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 37.59.239.66 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 46.4.28.40 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 108.162.196.124 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 91.228.53.61 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.73.239.17 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.73.236.54 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.2 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.3 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.4 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.5 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.6 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.7 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.8 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.9 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.10 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.11 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.12 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.13 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.14 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.15 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.16 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.17 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.18 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.19 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.20 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.21 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.22 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.23 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.49.91.24 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 202.12.28.140 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 192.5.4.1 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 199.212.0.53 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 200.3.13.14 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 193.0.9.5 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 185.73.236.54 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 104.28.18.95 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 94.23.120.89 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables -I INPUT -s 37.59.239.66 -p tcp --dport ssh -j REJECT
sudo /sbin/iptables-save
#
apt-get install iptables-persistent
#
echo " "
echo -e "${cumbia} ┌──────────────────────────────────────────┐ \e[0m"
echo -e "${cumbia} │    xtreamcode 1.0.60 por APUNTESPLOX     │ \e[0m"
echo -e "${cumbia} └──────────────────────────────────────────┘ \e[0m"
echo " "
echo -e "${cumbia} |\/\/\/|  \e[0m"
echo -e "${cumbia} |      |  \e[0m"
echo -e "${cumbia} |      |  \e[0m"
echo -e "${cumbia} | (o)(o)  \e[0m"
echo -e "${cumbia} C      _) Instalacion exitosa \e[0m"
echo -e "${cumbia}  | ,___|  dijo el bar sinson \e[0m"
echo -e "${cumbia}  |   /    \e[0m"
echo -e "${cumbia} /____\    \e[0m"
echo -e "${cumbia}/      \   \e[0m"
echo " "
echo " "
      read -p "REINICAR AHORA (y/n)?" CONT
      if [ "$CONT" == "y" ] || [ "$CONT" == "Y" ]; then
      reboot
      fi
