FROM node:18.16.1-bullseye-slim

RUN apt update && apt install -y git

RUN npm install -g pnpm@8.6.8
