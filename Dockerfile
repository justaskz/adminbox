FROM wakemeops/debian:bookworm
ENV HOSTNAME=adminbox
WORKDIR /root
RUN apt update -qq && \
    apt install -y iproute2 netcat-traditional less vim dnsutils wget curl net-tools \
    redis default-mysql-client

RUN install_packages rpk=24.1*

CMD ["tail", "-f", "/dev/null"]
