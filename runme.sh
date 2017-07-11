#!/bin/bash


run=(150 151 152 153)

for RN in "${run[@]}"
do
        cmsRun run2017_cfg.py runNumber=$RN
done


