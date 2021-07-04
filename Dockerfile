FROM fellah/gitbook:latest
RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone
RUN npm config set registry https://registry.npm.taobao.org
WORKDIR /srv/gitbook
COPY book.json .
RUN gitbook install
COPY . .
RUN gitbook build

FROM nginx:latest
RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone
COPY --from=0 /srv/gitbook/_book /usr/share/nginx/html