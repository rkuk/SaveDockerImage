FROM ubuntu:20.04

ADD thorium.gz /usr/local/

# install thorim dependencies
RUN ln -s /usr/local/thorium/thorium /usr/bin/chromium && \
    apt-get update && \
    apt-get install -y curl libnss3 libatk1.0-0 libatk-bridge2.0-0 libcups2 libgbm1 libxkbcommon0 libpango-1.0-0 libxcomposite1 libxdamage1 libxfixes3 libxrandr2 libcairo2 libasound2 fonts-wqy-zenhei fonts-arphic-ukai fonts-arphic-uming && \
    apt-get clean

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

WORKDIR /root

CMD /bin/bash
