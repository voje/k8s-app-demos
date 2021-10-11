FROM alpine:3.14

RUN apk update && apk add nginx

# Cleanup default Nginx servers and add our own
RUN rm /etc/nginx/http.d/*
COPY src/frontend.conf /etc/nginx/http.d/frontend.conf

# Copy the index.html to the location, specified in frontend.conf
COPY src/style.css /srv/style.css
COPY src/index.html /srv/index.html

# Default behavior when starting the container without arguments
# is to run entrypoint.sh
COPY src/entrypoint.sh /entrypoint.sh
CMD ["/entrypoint.sh"]
