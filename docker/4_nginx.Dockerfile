FROM nginx
COPY nginx_content /usr/share/nginx/html


# docker build --tag mynginx_image --file 4_nginx.Dockerfile .
# docker run -dp 80:80 mynginx_image 