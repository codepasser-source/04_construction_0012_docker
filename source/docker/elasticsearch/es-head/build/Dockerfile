FROM node:14.17.6
# settings timezone
RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone
WORKDIR /usr/src/app
RUN npm config set registry https://registry.npmmirror.com/
RUN npm install http-server
COPY ./build/_site .
EXPOSE 3001
CMD node_modules/http-server/bin/http-server . -p 3001
