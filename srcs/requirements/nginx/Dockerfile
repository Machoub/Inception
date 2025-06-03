FROM debian:bookworm

RUN apt update && apt upgrade -y && apt install nginx -y
RUN apt install vim -y    
RUN apt install curl -y
RUN mkdir -p /etc/nginx/ssl
RUN apt update && apt upgrade -y && apt install openssl -y
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=machouba.42.fr/UID=machouba"
RUN mkdir -p /var/run/nginx

EXPOSE 443
COPY conf/nginx.conf /etc/nginx/nginx.conf


RUN chmod 755 /var/www/html
RUN chown -R www-data:www-data /var/www/html

# CMD ["tail", "-f", "/dev/null" ]
CMD [ "nginx" , "-g", "daemon off;" ]