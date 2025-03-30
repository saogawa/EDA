#!/bin/sh

ip link add link eth1 name eth1.1 type vlan id 1
ip link set dev eth1.1 address AA:00:00:00:00:01
ip link set eth1.1 up
ip addr add 192.168.1.1/24 dev eth1.1

ip link add link eth1 name eth1.10 type vlan id 10
ip link set dev eth1.10 address AA:00:00:00:00:01
ip link set eth1.10 up
ip addr add 192.168.10.1/24 dev eth1.10

ip route add 192.168.20.0/24 via 192.168.10.254 dev eth1.10
ip route add 192.168.30.0/24 via 192.168.10.254 dev eth1.10
