#!/usr/bin/env bash
platform=$1

apt update
apt install -y wget
wget -O fastsdcpu.gz https://github.com/rupeshs/fastsdcpu/archive/refs/tags/v1.0.0-beta.37.tar.gz