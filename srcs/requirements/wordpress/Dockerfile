FROM debian:bookworm

RUN	apt update -y && apt upgrade -y && apt -y install wget curl vim
RUN apt-get install -y php php-mysql php-mbstring php-xml php-curl mariadb-client
RUN apt-get install -y php8.2-fpm
RUN groupadd -r wordpress && useradd -r -g wordpress -m wordpress
RUN mkdir -p /var/www/html
RUN chmod 777 /var/www/html
RUN wget https://wordpress.org/wordpress-6.7.1.tar.gz -P /var/www
RUN cd /var/www && tar -zxvf wordpress-6.7.1.tar.gz && rm -rf wordpress-6.7.1.tar.gz
RUN	chown -R wordpress:wordpress /var/www/wordpress
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/bin/wp
COPY conf/php-fpm.conf /etc/php/8.2/fpm/
COPY conf/wp-config.php /var/www/wordpress
COPY conf/wp.sh /
RUN chmod +x /wp.sh

EXPOSE 9000
ENTRYPOINT ["./wp.sh"]