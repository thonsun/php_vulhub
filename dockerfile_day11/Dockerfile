FROM thonsun/lamp:v3.0


ADD ./day11/ /var/www/html
RUN ls /var/www/html/
RUN chmod 777 /var/www/html/run.sh
CMD ["sh","/var/www/html/run.sh"]
EXPOSE 80
