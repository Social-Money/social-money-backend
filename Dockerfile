FROM node

RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime 

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package.json /usr/src/app/package.json
COPY yarn.lock /usr/src/app/yarn.lock

# --registry=https://registry.npm.taobao.org
RUN yarn install

COPY . /usr/src/app

EXPOSE 7010

CMD npm start