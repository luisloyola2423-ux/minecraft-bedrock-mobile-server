#!/usr/bin/env bash
set -euo pipefail

SERVER_DIR="$HOME/minecraft-bedrock-server"
PID_FILE="$SERVER_DIR/server.pid"

if [ -f "$PID_FILE" ]; then
  echo "Stopping previous server..."
  kill "$(cat "$PID_FILE")" || true
  rm -f "$PID_FILE"
fi

echo "No stop script is generated for PocketMine-MP in this setup. Use Ctrl+C in the terminal to stop the server."
