#!/bin/bash
#
apt-get update && apt-get upgrade -y
apt-get install apache2 -y
apt-get install lsb-release nscd curl php5 php5-mysql php5-cli php5-curl unzip unrar -y && apt-get install php5-mcrypt -y &&  php5enmod mcrypt
service apache2 restart
wget https://github.com/Alplox/xtreamcode1.0.60/raw/master/www_dir.part08.rar
wget https://github.com/Alplox/xtreamcode1.0.60/raw/master/www_dir.part07.rar
wget https://github.com/Alplox/xtreamcode1.0.60/raw/master/www_dir.part06.rar
wget https://github.com/Alplox/xtreamcode1.0.60/raw/master/www_dir.part05.rar
wget https://github.com/Alplox/xtreamcode1.0.60/raw/master/www_dir.part04.rar
wget https://github.com/Alplox/xtreamcode1.0.60/raw/master/www_dir.part03.rar
wget https://github.com/Alplox/xtreamcode1.0.60/raw/master/www_dir.part02.rar
wget https://github.com/Alplox/xtreamcode1.0.60/raw/master/www_dir.part01.rar
unrar x www_dir.part01.rar /tmp/
#
if [ -d /var/www/html ];
then
    echo "/var/www/html/ exists."
	cp -r /tmp/downloads/ /var/www/html/
	cp -r /tmp/licences/ /var/www/html/
	cp -r /tmp/modules/ /var/www/html/
else
    echo " "
	if [ -d /root/www/ ];
	then
    echo "/var/www/ exist"
    	cp -r /tmp/downloads/ /var/www/
	cp -r /tmp/licences/ /var/www/
	cp -r /tmp/modules/ /var/www/
else
    echo "No Webserver installed?"

fi

fi
#
wget http://127.0.0.1/downloads/iptv_panel_pro.zip -O /tmp/iptv_panel_pro.zip
wget http://127.0.0.1/downloads/install_iptv_pro.zip && unzip install_iptv_pro.zip
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
echo "Xtreamcode 1.0.60"
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
