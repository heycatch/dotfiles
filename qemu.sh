#!/bin/bash
#qemu-img create -f qcow2 debian.qcow2 10G
#qemu-system-x86_64 -boot d -cdrom debian-12.11.0-amd64-netinst.iso -enable-kvm -m 2048 -hda debian.qcow2 -net nic -net user,hostfwd=tcp::2222-:22
qemu-system-x86_64 -enable-kvm -m 2048 -hda debian.qcow2 -net nic -net user,hostfwd=tcp::2222-:22
