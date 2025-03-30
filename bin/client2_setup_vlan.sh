#!/bin/sh

ip link add link eth1 name eth1.2 type vlan id 2
ip link set dev eth1.2 address AA:00:00:00:00:02
ip link set eth1.2 up
ip addr add 192.168.1.2/24 dev eth1.2

ip link add link eth1 name eth1.20 type vlan id 20
ip link set dev eth1.20 address AA:00:00:00:00:02
ip link set eth1.20 up
ip addr add 192.168.20.1/24 dev eth1.20

ip route add 192.168.10.0/24 via 192.168.20.254 dev eth1.20
ip route add 192.168.30.0/24 via 192.168.20.254 dev eth1.20
