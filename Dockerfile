FROM node:21-alpine3.18
WORKDIR /mockApp
COPY . .
RUN npm install -g json-server --save-dev
EXPOSE 3000
CMD [ "node", "server.js"]
CMD ["json-server", "--watch", "db.json", "-H", "0.0.0.0", "--routes", "routes.json"]