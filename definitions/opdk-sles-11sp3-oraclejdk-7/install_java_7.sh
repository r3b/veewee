  #!/bin/bash
  grep preferIPv4Stack /etc/profile > /dev/null || (sed -i -e '$ a export _JAVA_OPTIONS="-Djava.net.preferIPv4Stack=true"' /etc/profile)
  wget --no-cookies \
  --no-check-certificate \
  --header "Cookie: oraclelicense=accept-securebackup-cookie" \
  "http://download.oracle.com/otn-pub/java/jdk/7u55-b13/jdk-7u55-linux-x64.rpm" \
  -O jdk-7-linux-x64.rpm
  rpm -Uvh /home/vagrant/jdk-7-linux-x64.rpm
  exit 0
