#!/bin/bash/

sudo apt update -y

sudo apt install apt-transport-https ca-certificates curl software-properties-common -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" -y

sudo apt update -y

apt-cache policy docker-ce -y

sudo apt install docker-ce -y

#sudo systemctl status docker

sudo chmod 777 /var/run/docker.sock

#sudo apt install apt-transport-https ca-certificates curl software-properties-common -y is to install packages apt-transport-https(to install https for secure transport), ca-certificates(to authenticate if the source is trusted or not using digital certificate
#curl to open the links software-properties-common this package allows you to add third party repos

#curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -   this command is used to store the gpg key -f: fail silently if url fails -s:silent mode, -S:show error messages, L:follow redirects
#this gpg key is input to | sudo apt-key add - and this stores the key gpg key into trusted key list. this  gpg key verifies if it is from the authentic and original version from docker or not

#sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" -y this line adds the official docker repo to your ubuntu system(debian/ubuntu) architecture=amd64 from link ubuntu type 
#bionic and a stable version

#apt-cache policy docker-ce -y - this checks which version of docker and from where it is available. confirms whether your system is officially using docker repo or not

#sudo apt install docker-ce -y - to install community edition

#sudo chmod 777 /var/run/docker.sock - this acts as a gate between docker image and docker deamon. and this command gives 777 permissions which is risky but you can alternativesly do like create a linux group and add users
#give the necessary permission to the group instead of 777
