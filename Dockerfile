FROM Ubuntu:22.04
MAINTAINER vinodguttula@gmail.com
LABEL type="webapp" Environment="Deployment"
RUN apt update
RUN apt upgrade -y
RUN apt install -y nginx
WORKDIR /var/www/html
WORKDIR /usr/share/nginx/html
ENTRYPOINT ["nginx"]
CMD ["-g", "daemonoff;"]
EXPOSE 80
EXPOSE 8090
ENV root_password=test123
