#!/bin/bash -e

#install MCS template
install -m 644 files/avnav_server.xml "${ROOTFS_DIR}/usr/lib/avnav/raspberry/"

#install for user
install -m 644 files/avnav_server.xml "${ROOTFS_DIR}/home/pi/avnav/data/"
