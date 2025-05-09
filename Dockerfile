FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY ./ /var/www/html/

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]