#Install java 6
if ! [ -d /usr/java/default ]; then
  if [ ! -f /home/vagrant/scripts/jdk-6u45-linux-x64.bin ]
  then
      wget -O /home/vagrant/scripts/jdk-6u45-linux-x64.bin https://www.dropbox.com/s/v5otijpn3d0z8q4/jdk-6u45-linux-x64.bin
      chmod +x jdk-6u45-linux-x64.bin
  fi
  if [ ! -f /home/vagrant/scripts/jdk-6u45-linux-x64.bin ]
  then
      echo "That's about all I can do without jdk-6u45-linux-x64.bin in the current directory."
      exit 0
  fi
  /home/vagrant/scripts/jdk-6u45-linux-x64.bin
  if ! [ -d jdk1.6.0_45 ]; then
    echo "Something bad happened with java"
    exit 1;
  fi
  if ! [ -d /usr/java ]; then
    sudo mkdir /usr/java
  fi
  sudo mv jdk1.6.0_45 /usr/java/default
fi
