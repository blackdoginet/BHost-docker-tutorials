## Use the image we just created
FROM [userspace]/debian-php
MAINTAINER [yourname]
# Add the tar file of the web site 
ADD website_content.tar /tmp/

# Docker automatically extracted. So move files to web directory
RUN mv /tmp/mysite/* /var/www/html && chown -R www-data:www-data /var/www/html

COPY httpd-foreground /usr/local/bin/
EXPOSE 80
CMD ["httpd-foreground"]
