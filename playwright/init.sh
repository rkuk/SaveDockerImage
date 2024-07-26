#!/usr/bin/env bash
platform=$1

apt update
apt install -y wget unzip
wget https://github.com/Alex313031/thorium/releases/download/M124.0.6367.218/thorium-browser_124.0.6367.218_AVX.zip && unzip -q -d thorium *.zip && tar -czf thorium.gz thorium && rm -rf thorium thorium.zip 
