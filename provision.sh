#! /bin/sh

# hostname
hostname devhost

grep localdocker /etc/hosts || cat >> /etc/hosts <<EOF1
127.0.0.1 devhost
EOF1

touch /var/lib/cloud/instance/locale-check.skip



# docker

apt-get update

apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

apt-get update

apt-cache madison docker-ce

apt-get install -y docker-ce=17.06.2~ce-0~ubuntu

usermod -a -G docker ubuntu

# docker-compose
curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# kubectl
curl -L https://storage.googleapis.com/kubernetes-release/release/v1.10.0/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl
chmod +x /usr/local/bin/kubectl
