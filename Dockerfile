FROM nginx

COPY index.html /usr/share/nginx/html

COPY dummy.conf /etc/nginx/conf.d/dummy.conf

COPY certs/ /etc/nginx/certs/

#Expose used to inform container which ports the container should listen to at runtime
EXPOSE 80 443

CMD ["nginx", "-g", "daemon off;"]
