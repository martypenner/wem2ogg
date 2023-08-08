FROM ubuntu:jammy

RUN apt-get update && apt-get install -y \
  curl \
  && rm -rf /var/lib/apt/lists/*
RUN curl -L https://github.com/WolvenKit/wwise-audio-tools/releases/download/0.9.3/wwtools -o /usr/bin/wwtools \
  && chmod +x /usr/bin/wwtools

WORKDIR /app
VOLUME /app

ENTRYPOINT [ "./convert.sh" ]
