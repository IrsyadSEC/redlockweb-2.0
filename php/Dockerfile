# image php:8.1-apache digunakan untuk membangun Docker image.
FROM php:8.1-apache
# dilakukan instalasi dan aktivasi ekstensi mysqli pada image Docker 
# yang sedang dibangun.
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
# dilakukan update dan upgrade pada package manager APT
RUN apt-get update && apt-get upgrade -y
# dilakukan pengaturan permission pada folder /var/www/html/ agar user www-data 
# dapat melakukan read-write (rw) dan execute (X), dan group www-data dapat melakukan
# read (r) dan execute (X). Sementara itu, permission untuk other (o) diberikan hanya 
# read dan execute saja.
RUN chown -R www-data:www-data /var/www/html/
RUN chmod -R u=rwX,g=rX,o= /var/www/html/
# file redlock-db.sql dicopy ke dalam direktori /docker-entrypoint-initdb.d/ pada 
# image Docker yang sedang dibangun. Direktori tersebut digunakan untuk menginisialisasi 
# database pada saat Docker container pertama kali dijalankan.
COPY redlock-db.sql /docker-entrypoint-initdb.d/