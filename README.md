Docker-Apache2
==============

#Create apache service

git clone https://github.com/henryhoang/Docker-Apache2

docker build -t henryhoang/apache2 .
docker run -d -p 80 henryhoang/apache2
docker run -d -p 8082:80 henryhoang/apache2
OR docker run -d -P  henryhoang/apache2

#Share files between host and container
docker run --name apache-container -d -p 8089:80 -v /var/www/apache_container/:/var/www henryhoang/apache
OR docker run --name apache-container -d -p :80 -v /var/www/apache_container/:/var/www henryhoang/apache
cd /var/www/apache_container (from host)

vi index.html   #no need to docker run, run curl after index.html created/updated:
docker ps
9cadac6cc5ba        henryhoang/apache2:latest    "usr/sbin/apache2 -D   3 minutes ago       Up 3 minutes        0.0.0.0:49157->80/tcp     apache-container
curl localhost:49157

