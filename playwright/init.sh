#!/usr/bin/env bash
platform=$1

apt update
apt install -y wget unzip
wget https://github.com/Alex313031/thorium/releases/download/M138.0.7204.303/thorium-browser_138.0.7204.303_AVX.zip && unzip -q -d thorium *.zip && tar -czf thorium.gz thorium && rm -rf thorium thorium.zip 
