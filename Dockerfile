# Use the official Nginx base image
FROM nginx:latest

# Copy the HTML file to the default Nginx public folder
COPY sol.html /usr/share/nginx/html

# Expose port 80
EXPOSE 80
