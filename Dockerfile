# Use the official Nginx base image
FROM nginx:latest

# Copy your HTML file to the Nginx web server directory
COPY sol.html /usr/share/nginx/html/

# Expose port 80, which Nginx listens on
EXPOSE 80

