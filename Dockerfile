FROM willsonic/ws-nginx-alpine:v0.0.1

ENV UI_CLIENT_PORT 5555

EXPOSE $UI_CLIENT_PORT

RUN mkdir -p /tmp/nginx/client-body \
    &&  mkdir -p /etc/nginx \
    &&  mkdir -p /app

COPY  ./etc/nginx /etc/nginx
COPY  ./dist/angular-app/* /app/
COPY  ./dist/angular-app/index.html /app/index.html


RUN mkdir -p /var/cache/nginx/api
