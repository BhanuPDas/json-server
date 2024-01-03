FROM node:21-alpine3.18
WORKDIR /mockApp
COPY . .
RUN npm install -g json-server
EXPOSE 3000
CMD ["json-server", "-w", "db.json", "-H", "0.0.0.0", "-r", "routes.json"]