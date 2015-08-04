  curl -L http://debian.datastax.com/debian/repo_key | apt-key add -
  echo "deb http://debian.datastax.com/community stable main" > /etc/apt/sources.list.d/cassandra.sources.list
  apt-get update
  apt-get -y --no-install-recommends install libcap2 cassandra=1.2.19
  update-rc.d cassandra enable 3 4 5
