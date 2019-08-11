FROM node:11
COPY . /app
ENTRYPOINT make run --directory /app