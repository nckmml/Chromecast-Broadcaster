# Chromecast-Broadcaster
Chromcast-Broadcaster is a docker image responds to upnp search requests with statically configured Chromecast broadcasts
This can be usefull to make Chromecasts available on other subnets, or to make devices available that are not responding to search requests.


# Installation
```
git clone https://github.com/nckmml/Chromecast-Broadcaster.git
cd Chromecast-Broadcaster
docker build -t chromecast-broadcaster:1.0 .
docker run --name Chromecast-Broadcaster --network host -d -e CHROMECASTIP="192.168.1.2" -e "CHROMECASTNAME="Chromecast" chromecast-broadcaster:1.0
````
