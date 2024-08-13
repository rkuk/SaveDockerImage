#!/usr/bin/env bash
platform=$1

apt update
apt install -y git
git clone https://github.com/Zeyi-Lin/HivisionIDPhotos
mv HivisionIDPhotos/* ./ && rm -rf HivisionIDPhotos
sed -i '/aliyun/d' Dockerfile
sed -i 's/EXPOSE 8080/EXPOSE 8080 7860/' Dockerfile
sed -i '/ENTRYPONIT/d' Dockerfile
sed -i '$aENV GRADIO_SERVER_NAME="0.0.0.0"' Dockerfile
sed -i '$aRUN chmod +x /app/entry.sh' Dockerfile
sed -i '$aENTRYPOINY ["/app/entry.sh"]' Dockerfile
rm -f init.sh
