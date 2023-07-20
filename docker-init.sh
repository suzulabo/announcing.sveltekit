#!/bin/sh

set -ex


DIRS=".pnpm-store node_modules packages/viewer/node_modules"

mkdir -p /announcing/data/.pnpm-store
ln -sf /announcing/data/.pnpm-store .
mkdir -p /announcing/data/node_modules
ln -sf /announcing/data/node_modules .
mkdir -p /announcing/data/packages/viewer/node_modules
ln -sf /announcing/data/packages/viewer/node_modules packages/viewer

rsync -a /pnpm-store-cache/ .pnpm-store/

pnpm install --frozen-lockfile

pnpm store prune
rsync -a .pnpm-store/ /pnpm-store-cache/
