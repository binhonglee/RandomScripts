sudo apt-get install openvpn
cd /etc/openvpn
sudo wget https://nordvpn.com/api/files/zip
sudo apt-get install ca-certificates
sudo apt-get install unzip
sudo unzip zip
sudo rm zip
sudo find *.ovpn > ~/RandomScripts/vpn_list
