FROM jwilder/nginx-proxy

ADD ./etc/nginx/configs/proxy.conf /etc/nginx/proxy.conf
