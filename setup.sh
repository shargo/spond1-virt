apt-get -y install autoconf automake libtool git pkg-config g++ unzip whois

echo LC_ALL=en_US.UTF-8 >> /etc/environment
echo LANG=en_US.UTF-8 >> /etc/environment
locale-gen en_US.UTF-8
dpkg-reconfigure locales



git clone https://github.com/shargo/spond1.git
tar xf spond1/toolchain/arm2013.05-CodeSourcery.tar.xz
mv arm-2013.05 /opt 
for f in /opt/arm-2013.05/bin/arm*
do
	echo ln -s $f /usr/bin/$(basename $f);
	ln -s $f /usr/bin/$(basename $f);
done
make -C spond1 get
chown -R vagrant spond1
