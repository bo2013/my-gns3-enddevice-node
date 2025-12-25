FROM ubuntu:24.04

RUN apt update \
 && apt install -y \
    x11-apps \
    xterm \
    libx11-6 \
    libxext6 \
    libxrender1 \
    libxtst6 \
    libxi6 \
 && apt clean \
 && rm -rf /var/lib/apt/lists/*

CMD ["xterm"]
