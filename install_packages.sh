#!/bin/zsh

cd ~

# =========================================
sudo apt update -qq

sudo apt install unzip zip tar wget htop tree fzf -y
sudo apt install software-properties-common -y

sudo apt install net-tools dnsutils -y   # ifconfig, dig, etc.
sudo apt install telnet -y
# =========== curl  ============= #
sudo apt install curl -y
# ================== git ==================  #
sudo apt install git -y
# ================== c/c++ enviroment ==================  #
sudo apt install gcc g++ -y
sudo apt install build-essential -y
sudo apt install make cmake -y
# ================== Python3 enviroment ==================  #
sudo apt install python3 -y
sudo apt install python3-pip -y
sudo apt install python3-venv -y
# ================== Nodejs enviroment ==================  #
# https://github.com/nvm-sh/nvm
# nvm ls to see all installed node versions
git clone https://github.com/nvm-sh/nvm.git
./nvm/install.sh
nvm install --lts
nvm use --lts
rm -rf /nvm
sudo apt install npm -y
# ================= Docker ==================
sudo apt install ca-certificates gnupg lsb-release -y
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt update -qq
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y



# Installation done
echo "All done. Please restart your computer."
