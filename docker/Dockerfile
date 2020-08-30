FROM debian:latest
RUN sed -i 's/archive.ubuntu.com/mirror.kakao.com/g' /etc/apt/sources.list
RUN apt update
RUN apt install gdebi -y
RUN apt install wget -y
WORKDIR /app/
RUN wget -P /app/ https://phoenixnap.dl.sourceforge.net/project/capanalysis/version%201.2.3/capanalysis_1.2.3_amd64.deb
RUN echo '#!/bin/sh' > /usr/sbin/policy-rc.d \
    && echo 'exit 101' >> /usr/sbin/policy-rc.d \
    && chmod +x /usr/sbin/policy-rc.d
# ENV DEBIAN_FRONTEND noninteractive
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y tshark
RUN gdebi --n /app/capanalysis_1.2.3_amd64.deb
RUN sed -i -e 's/PRIORITY=1 #(0..20)/PRIORITY=0 #(0..20)Z/g' /etc/init.d/capanalysis
ADD launcher.sh /app/
RUN apt install sudo
ADD upload.ini /etc/php/7.3/apache2/conf.d


CMD sudo service postgresql restart && \
sudo service apache2 restart && \
sudo service capanalysis restart && \
tail -f /var/log/apache2/access.log

VOLUME /var/lib/postgresql
VOLUME /opt/capanalysis
EXPOSE 9877
