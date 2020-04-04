# Network Games for Raspberry Pi

You have a Raspberry Pi and you don't use it? Install some network games and have fun with your friends!

You need:

- one Raspberry Pi (whatever model) with Raspbian installed (or another Desbian-based distro)
- a network connection
- some (online) friends

Available games are:

- Liquidwar
- Minetest
- Teeworlds

## Installation

We assume that you use the default `pi` user.

Just write...

```sh
sudo apt install git
git clone https://github.com/Situphen/rpi-games.git
cd rpi-games
./install.sh
```

... and it's done!

Use `./{game}/install-{game}.sh` to install only one game.

### Updating

```
sudo apt update
./install.sh --update
```

Use `./{game}/install-{game}.sh` to update only one game.

### Game servers management

```sh
sudo systemctl {start, stop or restart} {game}-server.service
```

## Configuring

You can customize this variables for all games in `configuration.sh` or a specific game in `{game}/configuration.sh`.

Default configuration is:

```sh
SERVER_NAME="Awesome network server"
SERVER_DESCRIPTION="Welcome on this soon-to-be awesome server!"
SERVER_PASSWORD="password"
```

## How to get the last version of those games?

If you use Raspbian, you can upgrade to a newer release or even to `testing` (be careful, your system can become unstable).

Update `/etc/apt/sources.list`:

```sh
deb http://mirrordirector.raspbian.org/raspbian/ {release} main contrib non-free rpi
# Uncomment line below then 'apt-get update' to enable 'apt-get source'
#deb-src http://mirrordirector.raspbian.org/raspbian/ {release} main contrib non-free rpi
```

Then, run `sudo apt update` followed by `sudo apt upgrade`.

Alternatively, you can compile the game you want from the source files. Good luck!
