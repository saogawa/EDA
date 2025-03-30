#!/bin/sh

ip link add link eth1 name eth1.3 type vlan id 3
ip link set dev eth1.3 address AA:00:00:00:00:03
ip link set eth1.3 up
ip addr add 192.168.1.3/24 dev eth1.3

ip link add link eth1 name eth1.30 type vlan id 30
ip link set dev eth1.30 address AA:00:00:00:00:03
ip link set eth1.30 up
ip addr add 192.168.30.1/24 dev eth1.30

ip route add 192.168.10.0/24 via 192.168.30.254 dev eth1.30
ip route add 192.168.20.0/24 via 192.168.30.254 dev eth1.30
