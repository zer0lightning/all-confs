#!/bin/bash
# wget http://tiny.cc/mmegamario-install
# sudo chmod +x megamario.sh
# ./megamario.sh

echo "Installing Nux Repo"
wget https://github.com/zer0lightning/filedownloads/raw/master/nux-dextop-release-0-5.el7.nux.noarch.rpm
sudo yum -y install nux-dextop-release-0-5.el7.nux.noarch.rpm
sudo yum -yupdate
echo "Installing MegaMario Dependancies"
wget https://github.com/zer0lightning/filedownloads/raw/master/SDL_mixer-1.2.12-4.el7.x86_64.rpm
sudo yum -y install SDL_mixer-1.2.12-4.el7.x86_64.rpm
sudo yum -y update
echo "Installing MegaMario"
sudo yum -y install megamario
sleep 5
echo "Launching MegaMario"
./usr/bin/megamario