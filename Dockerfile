FROM debian:9.9-slim

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y apache2 
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]
