FROM debian:latest
RUN apt update -qq && apt install -y iproute2 netcat-traditional less vim dnsutils
CMD ["tail", "-f", "/dev/null"]
