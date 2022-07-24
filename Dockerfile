FROM nginx:1.22-alpine

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY /angular/dist/angular-starter/* /usr/share/nginx/html
USER nginx
EXPOSE 8080
CMD ["nginx"]
