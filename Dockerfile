FROM debian:latest
ENV HOSTNAME=adminbox
WORKDIR /root
RUN apt update -qq && apt install -y iproute2 netcat-traditional less vim dnsutils wget curl
CMD ["tail", "-f", "/dev/null"]
