FROM wakemeops/debian:bookworm
ENV HOSTNAME=adminbox
WORKDIR /root

RUN apt update -qq && \
    apt install -y \
        bat \
        curl \
        default-mysql-client \
        dnsutils \
        iproute2 \
        jq \
        less \
        net-tools \
        netcat-traditional \
        redis \
        ripgrep \
        vim \
        w3m \
        wget \
        yq

RUN wget https://github.com/grafana/mimir/releases/latest/download/mimirtool-linux-amd64 -O /usr/local/bin/mimirtool && \
    chmod +x /usr/local/bin/mimirtool

CMD ["/usr/bin/tail", "-f", "/dev/null"]
