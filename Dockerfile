FROM nginx:latest

EXPOSE 80

# 기본 Nginx 설정에 UTF-8 charset을 추가합니다.
RUN sed -i '/http {/a \    charset utf-8;' /etc/nginx/nginx.conf

# 솔데스크 쇼핑몰 홈페이지 HTML 파일을 생성합니다.
RUN echo '<!DOCTYPE html>' > /usr/share/nginx/html/index.html \
    && echo '<html>' >> /usr/share/nginx/html/index.html \
    && echo '<head>' >> /usr/share/nginx/html/index.html \
    && echo '<meta charset="UTF-8">' >> /usr/share/nginx/html/index.html \
    && echo '<title>솔데스크 쇼핑몰</title>' >> /usr/share/nginx/html/index.html \
    && echo '</head>' >> /usr/share/nginx/html/index.html \
    && echo '<body style="text-align: center;">' >> /usr/share/nginx/html/index.html \
    && echo '<h1>솔데스크 쇼핑몰에 오신 것을 환영합니다!</h1>' >> /usr/share/nginx/html/index.html \
    && echo '<p>다양한 상품들을 구경해보세요.</p>' >> /usr/share/nginx/html/index.html \
    && echo '<img src="https://i.namu.wiki/i/AjKOCcyS-ssSqikcVWv_B0-OTXa6YvuvvNIq_7m-MD208t8Gur9x2-aBEJV8KTHkv0tfPslazA6VCpYa_VkyY17-LvstAbnXwTPYDYmUaAxKfYGi4XbMkJUomfhtIbJIrX9bQk1rf0_wOKcSQ6gdeQ.webp" alt="쇼핑몰 이미지" />' >> /usr/share/nginx/html/index.html \
    && echo '<p>여기에 쇼핑몰의 추가 정보를 넣을 수 있습니다.</p>' >> /usr/share/nginx/html/index.html \
    && echo '</body>' >> /usr/share/nginx/html/index.html \
    && echo '</html>' >> /usr/share/nginx/html/index.html

# Nginx를 실행합니다.
CMD ["nginx", "-g", "daemon off;"]

