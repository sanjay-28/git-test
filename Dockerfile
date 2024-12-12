# Use the official Nginx image from the Docker Hub
FROM nginx:latest

# Remove default configuration
RUN rm /etc/nginx/conf.d/default.conf

# Add a custom configuration file directly in the Dockerfile
RUN echo 'server {\
    listen 80;\
    location / {\
        root /usr/share/nginx/html;\
        index index.html;\
    }\
}' > /etc/nginx/conf.d/default.conf

# Add the HTML file directly in the Dockerfile
RUN echo '<!DOCTYPE html>\
<html>\
<head>\
    <title>Welcome to Nginx</title>\
</head>\
<body>\
    <h1>Hello World cicd In Action version tf !!</h1>\

</body>\
</html>' > /usr/share/nginx/html/index.html
