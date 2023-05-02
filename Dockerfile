FROM php:8.1-apache

RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# Copy redlock-db.sql file
COPY redlock-db.sql /tmp/

# Set up Apache and PHP
COPY index.php /var/www/html/
RUN chown -R www-data:www-data /var/www/html && \
    chmod -R u+rw,g+rw,o-rwx /var/www/html

# Expose and forward port
EXPOSE 80
CMD ["apache2-foreground"]
