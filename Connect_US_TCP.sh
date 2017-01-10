#!/bin/bash
# Connect to Random NordVPN US Server
sudo grep us.*tcp vpn_list > us_tcp_list
to_connect=`shuf -n 1 us_tcp_list`
cd /etc/openvpn
sudo openvpn $to_connect
