FROM node:11
COPY . /app
ENTRYPOINT make test --directory /app