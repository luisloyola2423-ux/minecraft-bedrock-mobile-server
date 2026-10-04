#!/usr/bin/env bash
set -euo pipefail

SERVER_DIR="$HOME/minecraft-bedrock-server"
PHAR_PATH="$SERVER_DIR/PocketMine-MP.phar"

if [ ! -f "$PHAR_PATH" ]; then
  echo "PocketMine-MP not found. Run scripts/install-server.sh first."
  exit 1
fi

cd "$SERVER_DIR"
php "$PHAR_PATH" --nogui
