FROM ubuntu
RUN apt update
RUN apt install curl --yes
RUN apt install vim --yes
WORKDIR /var/www
COPY ./conversao-temperatura/* /var/www
ADD md.tar.gz /var/www/uncompressed_files