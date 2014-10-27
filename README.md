Docker-Apache2
==============

Create apache service

git clone https://github.com/henryhoang/Docker-Apache2

docker build -t henryhoang/apache2 .
docker run -d -p 80 henryhoang/apache
docker run -d -P  henryhoang/apache2

share files between host and container
docker run --name apache-container -d -p 8089:80 -v /var/www/apache_container/:/var/www henryhoang/apache
cd /var/www/apache_container

vi index.html   #no need to docker run, run curl after index.html created/updated:
curl localhost:8089

