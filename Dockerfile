FROM debian:jessie

RUN apt-get update \
	&& apt-get install -y --no-install-recommends mosquitto \
	&& rm -r /var/lib/apt/lists/*
COPY mosquitto.conf /etc/mosquitto/mosquitto.conf

CMD mosquitto -c /etc/mosquitto/mosquitto.conf
EXPOSE 1883
