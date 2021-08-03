#!/bin/bash
#
# Script to fetch commits from different sources
#
# libmedia: Add MediaPlayer() function for backward compatibility
cd frameworks/av
git fetch https://github.com/ArrowOS/android_frameworks_av
git cherry-pick d5bf33497b07938574a593549324452cc32c9c04
#
# libcameraservice: Add support for miui camera mode
git fetch https://github.com/Evolution-X/frameworks_av
git cherry-pick fc59677b7dbecc56187e30a47959a2b7898c28c5

