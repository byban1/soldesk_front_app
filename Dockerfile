# Nginx 기반의 Dockerfile
FROM nginx:latest

# 포트 80 노
EXPOSE 80

# Nginx 실행
CMD ["nginx", "-g", "daemon off;"]

