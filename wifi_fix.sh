#!/bin/sh
sudo make
sudo make install
sudo modprobe -rv rtl8723be
sudo modprobe -v rtl8723be ant_sel=2
sudo ip link set wlo1 up
sudo iw dev wlo1 scan
echo "echo "options rtl8723be ant_sel=2" | sudo tee /etc/modprobe.d/50-rtl8723be.conf" | bash
