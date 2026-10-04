#!/usr/bin/env bash
set -euo pipefail

SERVER_DIR="$HOME/minecraft-bedrock-server"
DOWNLOAD_URL="https://github.com/pmmp/PocketMine-MP/releases/latest/download/PocketMine-MP.phar"
PHAR_PATH="$SERVER_DIR/PocketMine-MP.phar"

mkdir -p "$SERVER_DIR"

if [ ! -f "$PHAR_PATH" ]; then
  echo "Downloading PocketMine-MP..."
  wget -O "$PHAR_PATH" "$DOWNLOAD_URL"
fi

if [ ! -f "$SERVER_DIR/server.properties" ]; then
  cp "$(dirname "$0")/../config/server.properties.example" "$SERVER_DIR/server.properties"
fi

if [ ! -f "$SERVER_DIR/pocketmine.yml" ]; then
  cp "$(dirname "$0")/../config/pocketmine.yml.example" "$SERVER_DIR/pocketmine.yml"
fi

echo "Installation complete."
echo "Server directory: $SERVER_DIR"
echo "Run: bash scripts/start-server.sh"
