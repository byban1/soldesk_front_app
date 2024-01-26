FROM nginx:latest
#123
EXPOSE 80

RUN echo '<!DOCTYPE html>' > /usr/share/nginx/html/index.html \
    && echo '<html>' >> /usr/share/nginx/html/index.html \
    && echo '<head>' >> /usr/share/nginx/html/index.html \
    && echo '<title>Welcome to nginx!</title>' >> /usr/share/nginx/html/index.html \
    && echo '</head>' >> /usr/share/nginx/html/index.html \
    && echo '<body style="text-align: center;">' >> /usr/share/nginx/html/index.html \
    && echo '<h1>Hello from Dockerized nginx!</h1>' >> /usr/share/nginx/html/index.html \
    && echo '<p>This page is served by a Docker container running nginx.</p>' >> /usr/share/nginx/html/index.html \
    && echo '<img src="https://i.namu.wiki/i/AjKOCcyS-ssSqikcVWv_B0-OTXa6YvuvvNIq_7m-MD208t8Gur9x2-aBEJV8KTHkv0tfPslazA6VCpYa_VkyY17-LvstAbnXwTPYDYmUaAxKfYGi4XbMkJUomfhtIbJIrX9bQk1rf0_wOKcSQ6gdeQ.webp" alt="Image" />' >> /usr/share/nginx/html/index.html \
    && echo '</body>' >> /usr/share/nginx/html/index.html \
    && echo '</html>' >> /usr/share/nginx/html/index.html

CMD ["nginx", "-g", "daemon off;"]

