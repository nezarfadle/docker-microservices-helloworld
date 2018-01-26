FROM php:7.0
RUN mkdir -p /var/www/html/
COPY users.php /var/www/html/index.php
WORKDIR /var/www/html
ENTRYPOINT ["php", "-S", "0.0.0.0:80"]