#!/bin/bash
#qemu-img create -f qcow2 centos.qcow2 10G

#qemu-system-x86_64 -machine accel=kvm -cpu host -m 4096 -cdrom CentOS-Stream.x86_64.iso -drive file=centos.qcow2,format=qcow2 -net nic
#qemu-system-x86_64 -boot d -cdrom Debian-12.x86_64-9.iso -enable-kvm -m 2048 -hda debian.qcow2 -net nic

qemu-system-x86_64 -machine accel=kvm -cpu host -m 4096 -drive file=centos.qcow2,format=qcow2 -net nic -net user,net=192.168.124.0/24,hostfwd=tcp::2223-:22,hostfwd=tcp::1336-:1336

#qemu-system-x86_64 -enable-kvm -m 2048 -hda debian.qcow2 -net nic -net user,net=192.168.123.0/24,hostfwd=tcp::2222-:22,hostfwd=tcp::1336-:1336,hostfwd=tcp::5432-:5432
