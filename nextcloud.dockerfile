FROM nginx

# Turn of sendfile
RUN sed -i '/^ *sendfile/s/on/off/' /etc/nginx/nginx.conf

# Change Nginx config here...
RUN rm /etc/nginx/conf.d/default.conf
ADD ./etc/nginx/nextcloud.conf /etc/nginx/conf.d/

EXPOSE 80
