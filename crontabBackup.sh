#!/bin/bash
#user save created only for this task
#OVH is the root directiory in archive.tar
# exemple : OVH/connexion.php

#script exectued after VPS sent archive via SCP

cd /home/save/
tar -xvf archive.tar
cp OVH/* /var/www/html/
rm OVH -r 
rm archive.tar

