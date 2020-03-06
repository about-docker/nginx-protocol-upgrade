#!/bin/sh

openssl req -subj '/CN=localhost' -x509 -newkey rsa:4096 -nodes \
  -keyout /etc/ssl/private/ssl-cert-snakeoil.key \
  -out /etc/ssl/certs/ssl-cert-snakeoil.pem \
  -days 365

nginx

# [EOF]
