# Debian as base image
FROM debian:jessie

# Install Nginx
RUN \
  apt-get update && \
  apt-get install -y nginx && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* && \
  echo "\ndaemon off;" >> /etc/nginx/nginx.conf && \
  chown -R www-data:www-data /var/lib/nginx

# Copy over vhost
COPY nginx/default /etc/nginx/sites-available/default

# Copy over start script
COPY ./entrypoint.sh /entrypoint.sh

# Set defaut response
ENV NGINX_RESPONSE maintanence

# Startup
CMD ["/entrypoint.sh"]

EXPOSE 80 443
