# Nginx 이미지를 기반으로 설정
FROM nginx:alpine

# Nginx의 기본 문서 디렉토리에 HTML 및 CSS 파일 복사
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/css/

# 80 포트를 외부에 노출
EXPOSE 80

# Nginx 시작
CMD ["nginx", "-g", "daemon off;"]

