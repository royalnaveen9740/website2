#FROM ubuntu
#ENV TZ=Asia/Kathmandu
#RUN ln -snf /usr/share/zoneinfo/$TZ  /etc/localtime && echo $TZ >/etc/timezone
#RUN apt update
#RUN apt-get install -y apache2
#RUN apt-get clean
#EXPOSE 80
#CMD ["apache2ctl", "-D", "FOREGROUND"]

#RUN docker build -t ubuntu
#RUN docker run -it --name ubuntuweb -p 80:80 /bin/bash

#ADD . /var/www/html




FROM hshar/webapp
ADD . /var/www/html
