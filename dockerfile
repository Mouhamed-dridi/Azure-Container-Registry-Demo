# Use the official Nginx base image
FROM nginx:latest

# Copy the local index.html file to the default Nginx HTML directory
COPY hello.html /usr/share/nginx/html/

# Expose port 80 for Nginx
EXPOSE 80

