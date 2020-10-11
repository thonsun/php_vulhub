FROM thonsun/lamp:v3.0

ADD ./day1/ /var/www/html
RUN chmod 777 /var/www/html/run.sh
CMD ["sh","-c","/var/www/html/run.sh"]
EXPOSE 80
