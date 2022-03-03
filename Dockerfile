FROM node:16.11.1 as node

RUN mkdir -p /app
WORKDIR /app
COPY . /app/

COPY package.json /app/package.json
RUN npm install -g @angular/cli@11.2.7 
RUN npm install
RUN npm run build --prod

FROM nginx:1.13.8-alpine

COPY --from=node /app/dist/front /usr/share/nginx/html
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80 4000

