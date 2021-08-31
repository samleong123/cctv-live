#!/bin/bash

echo -e "\e[1;31m [INFO] Downloading Aria2 \e[0m"
wget https://github.com/P3TERX/Aria2-Pro-Core/releases/download/1.36.0_2021.08.22/aria2-1.36.0-static-linux-amd64.tar.gz

echo -e "\e[1;31m [INFO] Extracting Aria2 \e[0m"
tar -zxf aria2-1.36.0-static-linux-amd64.tar.gz
ls -a 

echo -e "\e[1;31m [INFO] Downloading EPG from epg.51zmt.top \e[0m"
rm *.xml
chmod a+X aria2c
./aria2c -x 10 -s 10 http://epg.51zmt.top:8000/e.xml 

echo -e "\e[1;31m [INFO] Rename EPG \e[0m"
cp e.xml cctv-epg.xml

echo -e "\e[1;31m [INFO] Renamed as cctv-epg.xml \e[0m"

echo -e "\e[1;31m [INFO] Cleaning up \e[0m"
rm aria2-1.36.0-static-linux-amd64.tar.gz
rm aria2c
rm e.xml

echo -e "\e[1;31m [INFO] Done \e[0m"
