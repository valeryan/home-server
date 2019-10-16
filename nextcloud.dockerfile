FROM nginx

# Change Nginx config here...
RUN rm /etc/nginx/conf.d/default.conf
ADD ./etc/nginx/nextcloud.conf /etc/nginx/nginx.conf

EXPOSE 80
EXPOSE 443
