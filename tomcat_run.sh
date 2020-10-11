cd into dir with Dockerfile
docker build -t tomcat8.5.58 .

docker run -d \
--name Tomcat_web \
-p 8080:8080 \
-v /doc_tomcat/conf:/usr/local/tomcat/conf/ \
-v /doc_tomcat/hello:/usr/local/tomcat/webapps/hello \
tomcat7jre8:v2


Use --network="host" in your docker run command, then 127.0.0.1 in your docker container will point to your docker host.

docker run -d \
--name tomcat2 \
--network host \
tomcat8.5.58:latest


listen 127.0.0.2
Inside the Service tag change:

<Connector port="8080" protocol="HTTP/1.1"
...
to:

<Connector address="127.0.0.1" port="8080" protocol="HTTP/1.1"
...

add access to web monitor
https://stackoverflow.com/questions/36703856/access-tomcat-manager-app-from-different-host
