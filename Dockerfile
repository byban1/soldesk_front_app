FROM nginx:latest
EXPOSE 80
RUN echo '<!DOCTYPE html>' > /usr/share/nginx/html/index.html
RUN echo '<html>' >> /usr/share/nginx/html/index.html
RUN echo '<head>' >> /usr/share/nginx/html/index.html
RUN echo '<title>Welcome to nginx!</title>' >> /usr/share/nginx/html/index.html
RUN echo '</head>' >> /usr/share/nginx/html/index.html
RUN echo '<body>' >> /usr/share/nginx/html/index.html
RUN echo '<h1>Hello from Dockerized nginx!</h1>' >> /usr/share/nginx/html/index.html
RUN echo '<p>This page is served by a Docker container running nginx.</p>' >> /usr/share/nginx/html/index.html
RUN echo '</body>' >> /usr/share/nginx/html/index.html
RUN echo '</html>' >> /usr/share/nginx/html/index.html
CMD ["nginx", "-g", "daemon off;"]

