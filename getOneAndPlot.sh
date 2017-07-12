#!/bin/bash
echo "Getting the filename = " $1
run=$(seq -f "%04g" $1 $1)
echo $run
source="pi:/home/pi/RDOUT_BOARD/data/*"$run"*.raw"
end="/afs/cern.ch/work/r/rsaradhy/public/RawData/HexaData_Run"$run".raw"
cd /afs/cern.ch/work/r/rsaradhy/CERN_TB_2017/CMSSW_8_0_26_patch2/src/HGCal
scp -r $source $end 
echo $run
cmsRun run2017_cfg.py runNumber=$run
