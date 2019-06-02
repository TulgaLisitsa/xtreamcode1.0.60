#!/bin/bash
#
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
unzip /var/www/html/DLM/downloads/install_iptv_pro.zip /var/www/html/DLM/downloads/
echo "               cambio directorio -> /var/www/html/DLM/downloads/                     "
cd /var/www/html/DLM/downloads/
cp install_iptv_pro.php /root/
echo "               cambio directorio -> /root/                     "
cd /root/ && chmod a+x /root/install_iptv_pro.php
#
#
echo "####################################################################################"
echo " "
echo "               LICENCIA: z.B 3d5b0f8e468c332                      "
echo "               LICENCIA: z.B 3d5b0f8e468c332                      "
echo "               LICENCIA: z.B 3d5b0f8e468c332                      "
echo "               LICENCIA: z.B 3d5b0f8e468c332                      "
echo "               LICENCIA: z.B 3d5b0f8e468c332                      "
echo "               LICENCIA: z.B 3d5b0f8e468c332                      "
echo "               LICENCIA: z.B 3d5b0f8e468c332                      "
echo "               LICENCIA: z.B 3d5b0f8e468c332                      "
echo "               LICENCIA: z.B 3d5b0f8e468c332                      "
echo " "
echo "####################################################################################"
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
#
apt-get install iptables-persistent
#
echo " "
echo "Xtreamcode 1.0.60 by APUNTESPLOX"
echo " "
echo " |\/\/\/|  "
echo " |      |  "
echo " |      |  "
echo " | (o)(o)  "
echo " C      _) Instalacion exitosa"
echo "  | ,___|  dijo el bar sinson"
echo "  |   /    "
echo " /____\    "
echo "/      \ "
echo " "
echo " "
      read -p "REINICAR AHORA (y/n)?" CONT
      if [ "$CONT" == "y" ] || [ "$CONT" == "Y" ]; then
      reboot
      fi
