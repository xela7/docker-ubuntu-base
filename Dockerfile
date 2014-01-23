from ubuntu:precise

maintainer IRMIS

run echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
run apt-get update
run apt-get upgrade -y
run apt-get install -y language-pack-en-base
run dpkg-reconfigure locales
run apt-get install -y build-essential git
run apt-get install -y python python-dev python-setuptools
run apt-get install -y python-software-properties
run apt-get install -y supervisor
run easy_install pip

#install common utilities
run apt-get install -y vim nano curl wget


# stack overflow solution to error: 
# http://stackoverflow.com/questions/20905350/latest-pip-fails-with-requires-setuptools-0-8-for-dist-info
run pip install setuptools --no-use-wheel --upgrade
