FROM mysql

RUN groupadd docker
RUN usermod -u 999 mysql
RUN usermod -G docker mysql

RUN chown -R mysql:docker /var/run/mysqld
