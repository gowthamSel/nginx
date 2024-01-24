FROM nginx:latest
RUN apt-get update && apt-get install -y supervisor cron
COPY system_info.sh /usr/share/nginx/html/system_info.sh
RUN chmod +x /usr/share/nginx/html/system_info.sh
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
EXPOSE 80
CMD ["/usr/bin/supervisord"]
