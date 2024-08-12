#!/usr/bin/env bash
platform=$1

apt update
apt install -y git
git clone https://github.com/Zeyi-Lin/HivisionIDPhotos
mv HivisionIDPhotos/* ./ && rm -rf HivisionIDPhotos
