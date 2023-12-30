#! /bin/bash

echo "Removing e1000e drivier..."
modprobe -r e1000e

echo "Reseting network card..."
echo 1 | tee "/sys/bus/pci/devices/0000:00:19.0/reset"

echo "Reloading e1000e driver..."
modprobe e1000e
