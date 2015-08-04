#Install java 6
wget -O /home/vagrant/jdk-6u45-linux-x64.bin \
https://www.dropbox.com/s/v5otijpn3d0z8q4/jdk-6u45-linux-x64.bin \
|| exit 1
chmod +x /home/vagrant/jdk-6u45-linux-x64.bin
/home/vagrant/jdk-6u45-linux-x64.bin
mkdir /usr/java
mv jdk1.6.0_45 /usr/java/default
