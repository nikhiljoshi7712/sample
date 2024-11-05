# Use Ubuntu as the base image
FROM ubuntu:latest

# Set environment variables to non-interactive to avoid prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

# Update package lists and install Apache2
RUN apt-get update && apt-get install -y apache2 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Copy your custom index.html to the Apache web directory
COPY index.html /var/www/html/

# Expose port 80 so the container can be accessed via HTTP
EXPOSE 80

# Start Apache2 in the foreground when the container runs
CMD ["apache2ctl", "-D", "FOREGROUND"]
