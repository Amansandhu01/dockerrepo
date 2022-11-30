FROM ubuntu

RUN apt-get update
#Install Nginx
RUN apt-get install -y nginx
COPY default /etc/nginx/sites-available/default
EXPOSE 80/tcp
#Run Nginx 
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
