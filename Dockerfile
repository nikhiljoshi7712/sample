# Use the official Apache2 image from the Docker Hub
FROM httpd:latest

# Copy your custom index.html into the Apache's default web root directory
COPY index.html /usr/local/apache2/htdocs/

# Expose port 80 so the container can be accessed via HTTP
EXPOSE 80
