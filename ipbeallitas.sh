#!/bin/bash
sudo ip link set enp4s0 up
sudo ip address add 192.168.1.113/24 broadcast 192.168.1.255 dev enp4s0
sudo ip route add default via 192.168.1.1 dev enp4s0
