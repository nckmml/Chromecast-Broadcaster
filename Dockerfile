FROM python:buster
COPY static_upnp /tmp/static_upnp
COPY setup.py /tmp/setup.py
ENV CHROMECASTIP=None
ENV CHROMECASTNAME=Chromecast
RUN apt-get update
RUN apt-get upgrade -y
COPY broadcaster.sh /usr/bin/broadcaster
RUN chmod +x /usr/bin/broadcaster
WORKDIR /tmp
RUN pip3 install .
RUN pip3 install netifaces
RUN mkdir /data
COPY config /data/config
ENTRYPOINT ["/usr/bin/broadcaster" ]
