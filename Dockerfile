FROM ubuntu:18.04
MAINTAINER Karimfaye (abdoul-karim.faye@akfinformatik.com)
RUN apt-get update
RUN apt-get install -y nginx
EXPOSE 80/tcp
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
#ADD static-website-example/ /var/www/html/
RUN rm -rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html/
#ENTRYPOINT ["/usr/sbin/nginx", "-g", "deamon off;"] (ne marche pas avec ENTRYPOINT)
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
