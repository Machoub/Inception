FROM debian:bookworm

RUN apt update && apt upgrade && apt install -y mariadb-server mariadb-client vim curl
#RUN rm -rf  /var/lib/apt/lists/*
#RUN apt-get clean && rm -rf /var/lib/apt/lists/*

#RUN mkdir -p /var/lib/mysql /run/mysqld && \
#    chown -R mysql:mysql /var/lib/mysql /run/mysqld && \
#    chmod -R 750 /var/lib/mysql /run/mysqld
COPY conf/mariadb.cnf /etc/mysql/mariadb.cnf
COPY conf/script_mariadb.sh /
RUN chmod +x /script_mariadb.sh
EXPOSE 3306

CMD ["./script_mariadb.sh"]