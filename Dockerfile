FROM --platform=$TARGETPLATFORM nginx:1.23-alpine
COPY src/nginx-templates/nginx.conf /etc/nginx/templates/nginx.conf.template
CMD ["nginx", "-g", "daemon off;"]
