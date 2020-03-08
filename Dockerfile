FROM debian:sid-slim
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      firefox ca-certificates && \
    rm -rf /var/lib/apt/lists/*
ENV LANG en-US
COPY syspref.js /etc/firefox/syspref.js
ENTRYPOINT ["/usr/bin/firefox", "--private-window", "https://duckduckgo.com"]
