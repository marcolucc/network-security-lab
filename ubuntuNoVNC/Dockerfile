FROM babim/ubuntubase

ENV DEBIAN_FRONTEND noninteractive
ENV HOME /root

RUN apt-get update \
    && apt-get install -y --force-yes --no-install-recommends supervisor \
        pwgen sudo vim-tiny x11vnc x11vnc-data \
        net-tools \
        lxde x11vnc xvfb \
        gtk2-engines-murrine ttf-ubuntu-font-family \
        libreoffice firefox \
        fonts-wqy-microhei \
        nginx \
        python-pip python-dev build-essential python-setuptools \
        mesa-utils libgl1-mesa-dri \
    && apt-get autoclean \
    && apt-get autoremove \
    && rm -rf /var/lib/apt/lists/*

ADD web /web/
RUN pip install -r /web/requirements.txt

#arp-spoofing lab
#RUN echo -e "sslverify=0" >> /etc/dnf/dnf.conf
RUN sudo apt install dsniff -y

# tini for subreap                                   
ENV TINI_VERSION v0.9.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /bin/tini
RUN chmod +x /bin/tini

ADD noVNC /noVNC/
ADD nginx.conf /etc/nginx/sites-enabled/default
ADD startup.sh /
ADD supervisord.conf /etc/supervisor/conf.d/
ADD doro-lxde-wallpapers /usr/share/doro-lxde-wallpapers/

EXPOSE 6080
WORKDIR /root
ENTRYPOINT ["/startup.sh"]
