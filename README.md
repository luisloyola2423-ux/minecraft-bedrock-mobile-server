# Minecraft Bedrock Mobile Server

This project creates a simple, Android-friendly Minecraft Bedrock server using PocketMine-MP. It is designed to run in Termux on Android phones or tablets, and it is also usable in a Linux shell environment.

## What this includes

- PocketMine-MP installation script
- Start/stop scripts
- Example server configuration files
- Easy Android setup instructions

## Requirements

- Android phone/tablet
- Termux app installed from F-Droid or GitHub Releases
- Internet access to download the server binary
- Optional: port forwarding / dynamic DNS for public access

## Recommended Android setup

1. Install Termux.
2. Open Termux and run:

```bash
pkg update && pkg upgrade
pkg install git wget curl openssl sqlite php libffi libjpeg-turbo libpng libzip
```

3. Clone this repository:

```bash
cd ~
git clone https://github.com/luisloyola2423-ux/minecraft-bedrock-mobile-server.git
cd minecraft-bedrock-mobile-server
```

4. Install the server:

```bash
bash scripts/install-server.sh
```

5. Start the server:

```bash
bash scripts/start-server.sh
```

6. Stop the server:

```bash
bash scripts/stop-server.sh
```

## Important notes

- PocketMine-MP is designed for Bedrock-compatible servers and works well for mobile hosting.
- On Android, keep Termux running in the foreground when testing.
- For public access, use port forwarding on your router or a cloud VPS.
- If you do not plan to expose the server publicly, LAN play is the easiest option.

## Default ports

- Server port: 19132
- UDP is required

## Working directories

The install script creates the server under:

```bash
~/minecraft-bedrock-server/
```

The project includes example config files at:

```bash
config/server.properties.example
config/pocketmine.yml.example
```

## Starting a public server

If you want players outside your home network to access the server:

1. Open your router configuration.
2. Forward UDP port 19132 to your Android device.
3. Ensure your ISP allows incoming connections.
4. Share your public IP or use a dynamic DNS service.

## Security tips

- Keep the server behind a firewall when possible.
- Use a whitelist if you are sharing with a small group.
- Back up your world files regularly.

## Troubleshooting

### PocketMine-MP is not starting

Check whether required dependencies are installed:

```bash
php -v
```

Make sure the JAR/PHAR file exists:

```bash
ls -l ~/minecraft-bedrock-server/
```

### Port not reachable

- Confirm that UDP 19132 is forwarded
- Ensure Termux is not limited by background restrictions
- Try restarting the server after router changes

## License

MIT
