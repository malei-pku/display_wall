#!bin/bash

useHeadNode="$1"
echo "$useHeadNode"

if[[ "$useHeadNode" == "nhn" ]]; then

	mpirun -ppn 1 -n 10 \
		-hosts powerwall00,powerwall01,powerwall02,powerwall03,powerwall04,powerwall05,powerwall06,powerwall07,powerwall08,powerwall09  \
		./dw2_testFrameRenderer powerwall01 2903
else
	mpirun -ppn 1 -n 10 \
		-hosts powerwall00,powerwall01,powerwall02,powerwall03,powerwall04,powerwall05,powerwall06,powerwall07,powerwall08,powerwall09  \
		./dw2_testFrameRenderer powerwall00 2903

fi

