#!/usr/bin/env bash
apt update
apt install -y git
git clone https://github.com/codecombat/codecombat.git
mv codecombat/* ./
rm -rf codecombat init.sh
