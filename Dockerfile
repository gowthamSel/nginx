FROM nginx
COPY your_script.sh /usr/share/nginx/html/
RUN chmod +x /usr/share/nginx/html/your_script.sh
EXPOSE 80
CMD ["sh", "-c", "/usr/share/nginx/html/your_script.sh | nginx -g 'daemon off;'"]
