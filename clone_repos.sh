#!/bin/bash

git clone https://github.com/GaloisInc/lmcp_sentinelizer.git
git clone https://github.com/GaloisInc/uxas_attribute_message.git
git clone https://github.com/GaloisInc/mavlink2protobuf_service.git
cd mavlink2protobuf_service && git checkout 924be69 && cd ../
# git clone https://github.com/GaloisInc/pixhawk-proxy.git # TODO: uncomment and select right commit

echo "Clone PX4 Firmware"
git clone -b uxas_master https://github.com/GaloisInc/Firmware.git
cd Firmware && git checkout 658b957888 && cd ../

echo "Download QGroundControl"
wget https://s3-us-west-2.amazonaws.com/qgroundcontrol/latest/QGroundControl.AppImage && chmod +x ./QGroundControl.AppImage

echo "Clone UxAS (Galois fork, pixhawk branch)"
git clone --single-branch --branch pixhawk https://github.com/GaloisInc/OpenUxAS

echo "Clone AFRL LMCP generator"
git clone https://github.com/afrl-rq/LmcpGen.git

echo "Clone OpenAMASE"
git clone https://github.com/afrl-rq/OpenAMASE.git