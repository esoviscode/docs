# Scripts

# PGadmin console

This script will automatically prepare a pgadmin console by running a docker
container in the background. Buildbar servers are already added, you just need a
password to access them.

### Prerequisites

Follow software installation instructions for your host system.

- `docker` installed
- `docker-compose` installed 

- `docker` access without sudo
  - `sudo groupadd docker`
  - `sudo usermod -aG docker sally`

### Running

- `./run-pgadmin.sh`
- URL and credentials are shown in the terminal
- The passwords to our databases can be found in the master passwords file via
  KeePass

### Troubleshooting

- Make sure all required software is installed

- Stop pgadmin container
  - `cd pgadmin`
  - `docker compose down -v`

- Wipe unused volumes and network sockets
  - `docker volume prune`
  - `docker network prune`

- If any issues persist, please report them at https://github.com/buildbar/api/issues/new
