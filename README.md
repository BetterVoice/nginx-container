Nginx Dockerfile
================

This project can be used to deploy an nginx server inside a Docker container.

### Running the Container

To run a standalone container with all the default settings.

```sudo docker run --name nginx -p 80:80/tcp -p 443:443/tcp -v /src/webapp:/usr/share/nginx/html bettervoice/nginx:1.7.10```

### Deployment Environment Variables

**NGINX_SERVER_NAME** - The nginx server name. (default: localhost)

**NGINX_PORT** - The port number nginx will listen on. (default: 80)

**NGINX_SSL_ENABLED** - The nginx enabled flag.

**NGINX_SSL_PORT** - The SSL port number nginx will listen on. (default: 443)

**NGINX_CERT_PATH** - The SSL certificate path.

**NGINX_KEY_PATH** - The SSL key path.