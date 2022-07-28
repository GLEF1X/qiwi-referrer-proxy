FROM nginx:1.21.6-alpine
COPY src/nginx-templates/nginx.conf /etc/nginx/templates/nginx.conf.template
CMD ["nginx", "-g", "daemon off;"]
