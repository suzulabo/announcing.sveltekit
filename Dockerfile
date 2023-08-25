FROM node:18.17.0-bullseye-slim

RUN apt update && apt install -y git rsync

RUN npm install -g pnpm@8.6.9

RUN echo 'export PS1="\W \$ "' >> /root/.bashrc
