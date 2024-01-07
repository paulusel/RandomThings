#! /bin/bash
#

ifname="$1"

systemctl stop NetworkManager.service
ip link set "$ifname" down
macchanger -r "$ifname"
ip link set "$ifname" up
systemctl start NetworkManager.service
exit 0
