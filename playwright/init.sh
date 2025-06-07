#!/usr/bin/env bash
platform=$1

apt update
apt install -y wget unzip
wget https://github.com/Alex313031/thorium/releases/download/M130.0.6723.174/thorium-browser_130.0.6723.174_AVX.zip && unzip -q -d thorium *.zip && tar -czf thorium.gz thorium && rm -rf thorium thorium.zip 
