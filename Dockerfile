FROM hshar/webapp

COPY . /var/www/html

EXPOSE 80

CMD ["sh", "-c", "rm -f /var/run/apache2/apache2.pid && apachectl -D FOREGROUND"]
