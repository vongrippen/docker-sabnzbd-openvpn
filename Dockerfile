FROM linuxserver/sabnzbd
RUN apt-get update && \
    apt-get install -y openvpn && \
    mv /etc/openvpn /etc/openvpn-orig && \
    ln -s /vpn /etc/openvpn && \
    apt-get clean && \
    rm -rf \
        /tmp/* \
        /var/lib/apt/lists/* \
        /var/tmp/*