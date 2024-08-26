FROM ubuntu/python:3.10-22.04_stable

ADD fastsdcpu.gz /root/

# install thorim dependencies
RUN mv /root/fastsdcpu* /root/fastsdcpu && cd /root/fastsdcpu && \
    apt update && apt install -y python3.10-venv && \
    chmod u+x ./start-webui.sh && \
    chmod u+x ./install.sh && ./install --disable-gui

VOLUME ["/root/fastsdcpu/configs", "/root/fastsdcpu/controlnet_models", "/root/fastsdcpu/lora_models"]

ENV GRADIO_SERVER_NAME=0.0.0.0
EXPOSE 7860

WORKDIR /root/fastsdcpu

ENTRYPOINT ["./start-webui.sh"]
