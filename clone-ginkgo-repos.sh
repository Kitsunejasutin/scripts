#!/bin/bash
# Script to clone Device source for Redmi Note 8 (Ginkgo)

read -rp "Enter branch name of device tree (default '11.0'): " DEVICE_BRANCH
read -rp "Enter branch name of remaining trees (default '11.0'): " BRANCH

GITHUB='https://github.com/Kitsunejasutin'

if [ -z "$BRANCH" ]; then BRANCH="11.0"; fi
if [ -z "$DEVICE_BRANCH" ]; then DEVICE_BRANCH="11.0"; fi

echo -e "\n============== CLONING DEVICE TREE ==============\n"
git clone -b $DEVICE_BRANCH $GITHUB/device_xiaomi_ginkgo device/xiaomi/ginkgo

echo -e "\n============== CLONING VENDOR TREE ==============\n"
git clone -b $BRANCH $GITHUB/vendor_xiaomi_ginkgo vendor/xiaomi/ginkgo

echo -e "\n============== CLONING KERNEL ==============\n"
git clone -b $BRANCH $GITHUB/kernel_xiaomi_ginkgo kernel/xiaomi/ginkgo

echo -e "\n============== DONE ==============\n"
