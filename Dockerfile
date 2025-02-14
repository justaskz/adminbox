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

CMD ["/usr/bin/tail", "-f", "/dev/null"]
