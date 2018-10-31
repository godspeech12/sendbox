FROM ubuntu:16.04
MAINTAINER ykhan
LABEL purpose="Hands-On-Lab"
RUN apt-get update
RUN apt-get install apache2 -y
ADD test.html /var/www/html
WORKDIR /var/www/html
RUN ["/bin/bash","-c","echo welcome 2nd webpage!! >> test2.html"]
EXPOSE 80
CMD ["apachectl","-DFOREGROUND"]