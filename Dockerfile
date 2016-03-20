FROM debian:jessie

RUN apt-get update \
	&& apt-get install -y --no-install-recommends mosquitto \
	&& rm -r /var/lib/apt/lists/*
COPY mosquitto.conf /etc/mosquitto/mosquitto.conf

CMD mosquitto
EXPOSE 1883
