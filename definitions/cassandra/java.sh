#531EE72F4C9D234C
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 4C9D234C
[ -f /etc/apt/sources.list.d/oracle_java.sources.list ] || cat > /etc/apt/sources.list.d/oracle_java.sources.list << EOF
deb http://ppa.launchpad.net/webupd8team/java/ubuntu utopic main
EOF
apt-get update
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
# echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
apt-get install oracle-java8-installer oracle-java8-set-default -y --force-yes  --no-install-recommends
update-java-alternatives -s java-8-oracle
