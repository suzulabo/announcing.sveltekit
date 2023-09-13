#!/bin/sh

set -ex

DIRS=".pnpm-store node_modules"
for DIR in ${DIRS}
do
  mkdir -p /announcing/data/${DIR} ./${DIR}
  ln -sfn /announcing/data/${DIR} ./${DIR}
done

rsync -a /pnpm-store-cache/ .pnpm-store/

pnpm install --frozen-lockfile

pnpm store prune
rsync -a .pnpm-store/ /pnpm-store-cache/
