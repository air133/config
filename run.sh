docker run -d \
--name hosting3 \
-p 8080:80 \
-v /doc3/public-html:/usr/local/apache2/htdocs \
apache3:apache