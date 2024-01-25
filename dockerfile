# Use the official Ubuntu base image
FROM ubuntu:latest

# Update the package lists and install necessary packages
RUN apt-get update && \
    apt-get install -y nginx

# Copy the local Nginx configuration file to the container
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80 for web traffic
EXPOSE 80

# Start Nginx in the foreground when the container starts
CMD ["nginx", "-g", "daemon off;"]
