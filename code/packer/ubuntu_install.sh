#!/bin/sh

export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true
tzdata tzdata/Areas select Europe
tzdata tzdata/Zones/Europe select Paris

# Install system-wide packages

apt update
apt dist-upgrade -y
apt install -y git-core vim-nox htop tree tmux zsh curl python-pip python3-pip golang sudo

# Install Docker-CE

apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
apt update
apt install -y docker-ce
docker run hello-world

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sed -i s/robbyrussell/ys/ .zshrc
echo 'export PATH=$HOME/go/bin:$PATH' >> $HOME/.zshrc

# Install Packer

go get -v github.com/hashicorp/packer

# Install Terraform

go get -v github.com/hashicorp/terraform

# Install ansible

python3 -m pip install ansible

# Install the courses content

git clone https://github.com/scaleway/cloud-courses

