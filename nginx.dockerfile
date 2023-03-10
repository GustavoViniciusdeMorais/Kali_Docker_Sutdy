FROM nginx:stable-alpine
ADD ./nginx/default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
EXPOSE 21
EXPOSE 8080
EXPOSE 445

ENTRYPOINT ["tail", "-f", "/dev/null"]