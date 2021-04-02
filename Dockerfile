FROM ubuntu
RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get clean
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]

RUN docker build -t="ubuntuweb"
RUN docker run -d -p 80:80 "ubuntuweb"

ADD . /var/www/html






#FROM hshar/webapp
#ADD . /var/www/html
