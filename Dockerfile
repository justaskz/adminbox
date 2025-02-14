FROM wakemeops/debian:bookworm
ENV HOSTNAME=adminbox
WORKDIR /root

RUN apt update -qq && \
    apt install -y \
        curl \
        default-mysql-client \
        dnsutils \
        iproute2 \
        jq \
        less \
        net-tools \
        netcat-traditional \
        redis \
        vim \
        w3m \
        wget \
        yq

RUN wget https://github.com/grafana/mimir/releases/latest/download/mimirtool-linux-amd64 -P /usr/local/bin && \
    chmod +x /usr/local/bin/mimirtool

CMD ["/usr/bin/tail", "-f", "/dev/null"]
