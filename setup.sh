#!/bin/bash
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
apt-cache policy docker-ce
sudo apt install -y docker-ce
git clone git://github.com/l50/rest-experiment.git
sudo docker build rest-experiment/ -t l50/rest-exp
sudo docker run -d -p 80:80 --rm --name=rest-exp l50/rest-exp
