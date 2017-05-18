sudo apt-get install openvpn
pushd /etc/openvpn
sudo wget https://nordvpn.com/api/files/zip
sudo apt-get install ca-certificates
sudo apt-get install unzip
sudo unzip zip
sudo rm zip
pushd -0
