FROM registry.access.redhat.com/ubi7/ubi

RUN yum -y install httpd && \
    yum clean all

COPY ./wedding /var/www/html/

EXPOSE 80

CMD ["httpd" ,"-D", "FOREGROUND"]

