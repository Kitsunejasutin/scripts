#!/bin/bash

# Shell script to clone stable eleven HALS for ginkgo
# NOTE: Only for ROMs with project pathmap support.

HALS_REPO='https://github.com/trinket-devs'

if [ -z "$B1" ]; then B1="ten"; fi
if [ -z "$BRANCH2" ]; then BRANCH2="11.0"; fi

for i in "audio" "media" 
do
    echo -e "\n====== CLONING sm8150 $i HAL ======\n"
    rm -rf hardware/qcom-caf/sm8150/$i
    git clone -b $B1 $HALS_REPO/hardware_qcom-caf_sm8150_$i hardware/qcom-caf/sm8150/$i
done

echo -e "\n============== CLONING sm8150 display HAL ==============\n"
rm -rf hardware/qcom-caf/sm8150/display
git clone -b $BRANCH2 $HALS_REPO/hardware_qcom-caf_sm8150_display hardware/qcom-caf/sm8150/display

