FROM almalinux
RUN yum install nginx -y
CMD ["nginx", "-d", "daemon off;"]
RUN rm -rf /usr/share/nginx/html/index.html
EXPOSE 8080
COPY UI /usr/share/nginx/html
LABEL AUTHOR="ARUN"\
      AGE="24"
ADD https://github.com/githubtraining/hellogitworld /temp/
ADD sample-1.tar /temp/




