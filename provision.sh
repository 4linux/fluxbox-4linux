#!/bin/bash

read -p 'Digite a senha do root: ' -s -r PASSWD

SCRIPT='apt-get update
apt-get install -y passwd wget vim xdm fluxbox git xinit firefox-esr thunar geany geany-plugin-treebrowser unzip vagrant sakura idesk wicd
echo deb https://download.virtualbox.org/virtualbox/debian buster contrib > /etc/apt/sources.list.d/virtualbox.list
wget -O - https://www.virtualbox.org/download/oracle_vbox_2016.asc | apt-key add -
wget -O - https://www.virtualbox.org/download/oracle_vbox.asc | apt-key add -
apt-get update
apt-get install -y virtualbox-6.0
rm -rf /root/fluxbox-4linux
git clone https://github.com/hector-vido/fluxbox-4linux.git /root/fluxbox-4linux
cp -a /root/fluxbox-4linux/xdm/* /etc/X11/xdm/
for U in matutino vespertino noturno diurno sabado domingo; do
	useradd -d /home/$U -m -s /bin/bash $U
	usermod -G vboxusers,netdev -a $U
	echo -e "$U\n$U" | passwd $U
	rm -rf /home/$U/.fluxbox
	rm -rf /home/$U/.idesk*
	cp -a /root/fluxbox-4linux/user/.fluxbox /home/$U
	cp -a /root/fluxbox-4linux/user/.idesk* /home/$U
	cp -a /root/fluxbox-4linux/user/.mozilla /home/$U
	cp -a /root/fluxbox-4linux/user/.config /home/$U
	mkdir -p /home/$U/{Documentos,Downloads}
	chown $U:$U /home/$U/{Documentos,Downloads}
	chown -R $U:$U /home/$U/{.config,.mozilla} 
done
systemctl enable wicd'

for X in $(seq 1 13); do 
	sshpass -p "$PASSWD" ssh -o stricthostkeychecking=no suporte@192.168.203.$X "echo '$PASSWD' | su -c 'bash ${SCRIPT}' -" &
done

wait
exit 0
