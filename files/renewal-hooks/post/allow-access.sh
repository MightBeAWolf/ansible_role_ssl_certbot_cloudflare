#!/bin/sh
chmod 0755 /etc/letsencrypt/live
chmod 0644 /etc/letsencrypt/live/*/*.pem

chmod 0700 -R /etc/letsencrypt/archive
chmod 0755    /etc/letsencrypt/archive
chmod 0755    /etc/letsencrypt/archive/*/
ls -1 /etc/letsencrypt/live/*/*.pem | \
  xargs -I{} readlink -f {} | \
  xargs -I{} chmod 0644 {}


