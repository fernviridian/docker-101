FROM nginx:alpine

COPY ./var/www/myapp.html /usr/share/nginx/html/

# expose app port (This does not forward to the host, that is done with the -p flag in docker run)
EXPOSE 80
