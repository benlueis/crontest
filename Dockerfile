
# blueyy168
FROM ubuntu:latest
MAINTAINER blueyy168@hotmail.com
 
ADD crontab /etc/cron.d/hello-cron

RUN echo benlueis
 
RUN chmod 0644 /etc/cron.d/hello-cron
 
RUN touch /var/log/cron.log

CMD cron && tail -f /var/log/cron.log