FROM nginx:alpine

RUN apk add openssl

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY entrypoint.sh /usr/local/sbin/entrypoint

RUN chmod 0500 /usr/local/sbin/entrypoint

ENTRYPOINT /usr/local/sbin/entrypoint

# [EOF]
