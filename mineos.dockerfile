FROM nginx

# Turn off sendfile
RUN sed -i '/^ *sendfile/s/on/off/' /etc/nginx/nginx.conf

# Change Nginx config here...
RUN rm /etc/nginx/conf.d/default.conf
ADD ./etc/nginx/extra.conf /etc/nginx/conf.d/
ADD ./etc/nginx/sites/mineos.conf /etc/nginx/conf.d/

EXPOSE 80
