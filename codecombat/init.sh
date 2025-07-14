#!/usr/bin/env bash
apt update
apt install -y git
git clone https://github.com/Chaboi45/codecombat-premium.git 
mv codecombat-premium/* ./
rm -rf codecombat-premium init.sh
