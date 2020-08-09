FROM centos:7
ADD mariadb.repo /etc/yum.repos.d/mariadb.repo
RUN rpm --import https://yum.mariadb.org/RPM-GPG-KEY-MariaDB \
    && rpm --import https://www.centos.org/keys/RPM-GPG-KEY-CentOS-7 \
    && yum install -y -q MariaDB-server MariaDB-client galera-4 sudo 

ADD my.cnf /etc/my.cnf.d/my.cnf