FROM ubuntu/python:3.10-22.04_stable

RUN ["/usr/bin/apt", "update"]
RUN ["/usr/bin/apt", "install", "-y", "bash", "python3.10-venv"]

ADD fastsdcpu.gz /root/

SHELL [ "/bin/bash", "-c"  ]

RUN mv /root/fastsdcpu* /root/fastsdcpu && cd /root/fastsdcpu && \
    chmod u+x ./start-webui.sh && \
    chmod u+x ./install.sh && ./install --disable-gui

VOLUME ["/root/fastsdcpu/configs", "/root/fastsdcpu/controlnet_models", "/root/fastsdcpu/lora_models"]

ENV GRADIO_SERVER_NAME=0.0.0.0
EXPOSE 7860

WORKDIR /root/fastsdcpu

ENTRYPOINT ["./start-webui.sh"]
