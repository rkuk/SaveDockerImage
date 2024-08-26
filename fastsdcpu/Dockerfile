FROM ubuntu:22.04

ADD fastsdcpu.gz /root/

SHELL [ "/bin/bash", "-c"  ]

RUN apt update && apt install -y python3-venv && \
    mv /root/fastsdcpu* /root/fastsdcpu && cd /root/fastsdcpu && \
    chmod u+x ./start-webui.sh && \
    chmod u+x ./install.sh && ./install.sh --disable-gui

VOLUME ["/root/fastsdcpu/configs", "/root/fastsdcpu/controlnet_models", "/root/fastsdcpu/lora_models"]

ENV GRADIO_SERVER_NAME=0.0.0.0
EXPOSE 7860

WORKDIR /root/fastsdcpu

ENTRYPOINT ["./start-webui.sh"]
