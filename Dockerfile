# Use the official Nginx base image
FROM nginx:latest

# Copy your HTML file and any other assets to the Nginx web server directory
COPY ./your-html-file.html /usr/share/nginx/html/

# You can also copy any additional assets like images, CSS, or JavaScript files
# COPY ./your-assets-directory /usr/share/nginx/html/

# Expose port 80, which Nginx listens on
EXPOSE 80

