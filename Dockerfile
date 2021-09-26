FROM nginx:1.21.3-alpine
COPY build /usr/share/nginx/html
RUN echo -e "server {\n  listen 80;\n  absolute_redirect off;\n  root /usr/share/nginx/html;\n}" > /etc/nginx/conf.d/nginx.conf
