#!/bin/bash
echo "Getting the filename = " $1
run=$(seq -f "%04g" $1)
echo $run
source="pi:/home/pi/RDOUT_BOARD/data/*"$run"*.raw"

scp -r "/afs/cern.ch/work/r/rsaradhy/public/RawData/HexaData_Run"$run".raw"
echo $run
cmsRun run2017_cfg.py runNumber=$run
