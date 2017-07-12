#!/bin/bash

echo Setting $1 as the Number of boards...

read -p "Press [Enter] key to start Continue..."

file1="./run2017_cfg.py"
file2="./Geometry/interface/HGCalTBGeometryParameters.h"


sed -i '47s@.*@'"NHexaBoards=cms.untracked.uint32("$1"),"'@' $file1

sed -i '10s@.*@'"static const uint16_t NUMBER_OF_HEXABOARD = "$1";"'@' $file2


scram b -j32



