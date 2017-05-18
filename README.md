# Index

1.  [Connect_US_TCP.sh](#connect_us_tcp.sh)
2.  [GitPulls.sh](#gitpulls.sh)
3.  [InstallNordVPN.sh](#installnordvpn.sh)
4.  [InstallGCC.sh](#installgcc.sh)
5.  [InstallGCC-64bit.sh](#installgcc-64bit.sh)
6.  [updates.sh](#updates.sh)

## [Connect_US_TCP.sh](#connect_us_tcp.sh)

Gathers a list of all the available `.ovpn` files stored in `/etc/openvpn/`. The randomly connect to one that contains `us.` and `tcp` in the filename.

## [GitPulls.sh](#gitpulls.sh)

Run through every folder in the folder one level above the script containing folder to execute git pull.

## [InstallNordVPN.sh](#installnordvpn.sh)

Installs [NordVPN](https://nordvpn.com/) for debian based linux machine.

## [InstallGCC.sh](#installgcc.sh)

Installs GCC the manual way. (Really, avoid if you can.)

## [InstallGCC-64bit.sh](#installgcc-64bit.sh)

Same as above but for 64-bit machines. (Again, avoid if you can.)

## [updates.sh](#updates.sh)

Just update with both apt-get and aptitude.
