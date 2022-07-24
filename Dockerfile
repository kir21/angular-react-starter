FROM nginx:stable-alpine
RUN ls -la .

RUN chown -R nginx:nginx /usr/share/nginx/html
COPY ./nginx.conf /etc/nginx/nginx.conf
RUN ls -la ./
COPY /angular/dist /usr/share/nginx/html

RUN chown -R nginx:nginx /var/cache/nginx && \
    chown -R nginx:nginx /var/log/nginx && \
    chown -R nginx:nginx /etc/nginx/conf.d
RUN touch /var/run/nginx.pid && \
        chown -R nginx:nginx /var/run/nginx.pid

USER nginx

EXPOSE 8080

CMD ["nginx"]
