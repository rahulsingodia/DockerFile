FROM centos:latest
RUN sed -i 's|mirrorlist|#mirrorlist|' /etc/yum.repos.d/CentOS-*.repo && \
    sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|' /etc/yum.repos.d/CentOS-*.repo
RUN yum install httpd zip wget unzip -y
RUN wget -o /var/www/html/neogym.zip https://www.free-css.com/assets/files/free-css-templates/download/page296/neogym.zip
WORKDIR /var/www/html
RUN unzip neogym.zip
RUN cp -rf neogym.zip/* .
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
