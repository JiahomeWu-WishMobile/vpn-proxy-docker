FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y openfortivpn ipppd openssh-client nginx
RUN rm -rf /var/lib/apt/lists/*

RUN echo pppoe > /etc/modules
RUN mknod /dev/ppp c 108 0

COPY ./config/vpn-config /etc/openfortivpn/vpn-config
RUN touch /root/.bashrc \
    && echo "alias vpn_conn='openfortivpn -c /etc/openfortivpn/vpn-config'" > /root/.bashrc \
    && /bin/bash -c "source /root/.bashrc"
