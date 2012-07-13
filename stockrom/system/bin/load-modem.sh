#!/system/bin/sh

# Try to open a smd node to force loading of modem and Q6 images
echo 1 > /dev/smd_pkt_loopback
echo 0 > /sys/devices/system/cpu/cpu1/online
