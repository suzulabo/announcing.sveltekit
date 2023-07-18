#!/bin/sh

set -ex

mkdir -p ./node_modules/.pnpm-store
pnpm config set store-dir ./node_modules/.pnpm-store

pnpm install --frozen-lockfile
