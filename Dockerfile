FROM debian:jessie

RUN apt-get update \
	&& apt-get install -y --no-install-recommends mosquitto \
	&& rm -r /var/lib/apt/lists/*

CMD mosquitto
EXPOSE 1883
