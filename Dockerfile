FROM node:21
WORKDIR /mockApp
COPY . .
RUN npm install -g json-server
EXPOSE 3000
CMD ["json-server"]