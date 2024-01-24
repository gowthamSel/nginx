# Use the official nginx image as a base
FROM nginx:latest

# Install cron
# RUN apt-get update && apt-get install -y cron

# Copy scripts and crontab
COPY shell.sh /usr/share/nginx/html/shell.sh
COPY system_info.sh /usr/share/nginx/html/system_info.sh
# COPY crontab.txt /etc/cron.d/crontab.txt
RUN chmod +x /usr/share/nginx/html/shell.sh
# Set permissions for the scripts and crontab
RUN chmod +x /usr/share/nginx/html/system_info.sh 
# RUN  chmod 0644 /etc/cron.d/crontab.txt

# Set up the cron job
# RUN crontab /etc/cron.d/crontab.txt && touch /var/log/cron.log

# Expose port 80
EXPOSE 80

# Use an entrypoint script to handle initialization
# COPY entrypoint.sh /entrypoint.sh
COPY entrypoint.sh /usr/share/nginx/html/entrypoint.sh

# RUN chmod +x /entrypoint.sh
RUN chmod +x /usr/share/nginx/html/entrypoint.sh

# ENTRYPOINT ["/entrypoint.sh"]
ENTRYPOINT ["/usr/share/nginx/html/entrypoint.sh"]
