FROM centos
MAINTAINER Admin <admin@admin.com>
RUN yum install -y httpd
RUN echo "Hellow container !" > /var/www/html/index.html
EXPOSE 80
COPY startup1.sh /startup1.sh
RUN chmod 744 /startup1.sh
CMD ["/startup1.sh"]
