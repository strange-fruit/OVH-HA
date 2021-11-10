#!/bin/bash

ipbck=""
ipvps=""

function DOWN()
{
	while true
	do
		ping -c 10 ipvps > /dev/null

		if [ $? != 0 ]
		then
			echo "DOWN"
			python3 /home/save/dnszoneOVH.py ipbck
			break
		fi
	done
}

function UP()
{
	while true
        do
                ping -c 10 ipvps > /dev/null

                if [ $? == 0 ]
                then
                        echo "UP"
                        python3 /home/save/dnszoneOVH.py ipvps
			break
                fi
        done
}

while true
do
	DOWN
	UP
done
