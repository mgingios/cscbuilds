##############################################################
# $DOCKER_VERSION_STRING is injected by packer at build time #
##############################################################

sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    git-core \
    gnupg-agent \
    software-properties-common

sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update && apt-get install -y docker-ce docker-compose containerd.io
#curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/bin/docker-compose

sudo mkdir /var/docker
#git clone https://github.com/roura356a/metar.git /var/docker/metar