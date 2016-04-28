#!/bin/sh

#./PCMSim -t traces/mase_hmtt_trace -s system.ini.open -d ini/PCM_micron_16M_8B_x16_sg25E.ini -c 100000

for trace in k6_aoe_02_short.trc 
do
	for policy in close
	do
		./PCMSim -t traces/${trace} -s system.ini.${policy} -d ini/PCM_micron_16M_8B_x16_sg25E.ini -c 100000
	done
done
