# Ubuntu BetterVoice Client.

FROM nginx:1.7.9
MAINTAINER Thomas Quintana <thomas@bettervoice.com>

# Initialize the package manager.
RUN apt-get update -y

# Add the nginx bootstrap script.
ADD scripts/nginx-init /usr/bin/nginx-init
RUN chmod +x /usr/bin/nginx-init

# Open the container up to the world.
EXPOSE 80/tcp
EXPOSE 443/tcp

# Start Nginx.
CMD nginx-init && tail -f /var/log/nginx/error.log
