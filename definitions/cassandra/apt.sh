apt-get -y update
apt-get -y upgrade
apt-get -y --no-install-recommends install linux-headers-$(uname -r) build-essential
apt-get -y --no-install-recommends install zlib1g-dev libssl-dev libreadline-gplv2-dev libyaml-dev
apt-get -y --no-install-recommends install dkms
apt-get -y --no-install-recommends install nfs-common
apt-get -y --no-install-recommends install expect expect-dev vim curl zip unzip git
apt-get -y --no-install-recommends install openjdk-8-jdk openjdk-8-jre-headless
