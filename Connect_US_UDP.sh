#!/bin/bash
# Connect to Random TCP US Server
sudo find /etc/openvpn/*.ovpn > vpn_list
sudo grep us.*udp vpn_list > us_udp_list
to_connect=`shuf -n 1 us_udp_list`
rm us_udp_list
cd /etc/openvpn
sudo openvpn $to_connect
