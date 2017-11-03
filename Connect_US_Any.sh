#!/bin/bash
# Connect to Random TCP US Server
sudo find /etc/openvpn/*.ovpn > vpn_list
sudo grep us.*tcp vpn_list > us_tcp_list
to_connect=`shuf -n 1 us_tcp_list`
cd /etc/openvpn
sudo openvpn $to_connect
