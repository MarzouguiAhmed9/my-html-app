# Dockerfile
FROM nginx:alpine
COPY code.html /usr/share/nginx/html/index.html
EXPOSE 80
