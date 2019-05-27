FROM debian:9.9-slim

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y apache2 


RUN apt-get purge -y 'libidn*'
RUN apt-get update && apt-get install -y --no-install-recommends \
		libidn2-0 \
&& rm -rf /var/lib/apt/lists/*

EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]

