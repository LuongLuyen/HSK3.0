#!/bin/sh
set -e

# Volume /app/data còn trống → nạp SQL dump vào DB. Nếu đã có DB thì bỏ qua.
node scripts/init-db.mjs

exec node dist/main.js
