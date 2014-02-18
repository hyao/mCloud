#!/bin/bash
# create an vlan interface as openstack management ip

sudo ip link add link eth0 name eth0.2 type vlan id 2

sudo ip addr add 192.168.2.1/24 brd 192.168.2.255 dev eth0.2

sudo ip link set dev eth0.2 up
