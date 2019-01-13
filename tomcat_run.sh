docker run -d \
--name Tomcat_web \
-p 8080:8080 \
-v /doc_tomcat/conf:/usr/local/tomcat/conf/ \
-v /doc_tomcat/hello:/usr/local/tomcat/webapps/hello \
tomcat7jre8:v2
