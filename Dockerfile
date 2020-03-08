FROM debian:sid-slim
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      firefox ca-certificates curl && \
    rm -rf /var/lib/apt/lists/*
ENV LANG en-US
RUN curl -sL https://raw.githubusercontent.com/pyllyukko/user.js/master/user.js | \
    sed 's/user_pref(/pref(/g' > /etc/firefox/syspref.js
ENTRYPOINT ["/usr/bin/firefox", "--private-window", "https://duckduckgo.com"]
