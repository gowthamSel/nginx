FROM nginx
COPY systeminfo.sh /usr/share/nginx/html/
RUN chmod +x /usr/share/nginx/html/systeminfo.sh
EXPOSE 80
CMD ["sh", "-c", "/usr/share/nginx/html/systeminfo.sh | nginx -g 'daemon off;'"]
