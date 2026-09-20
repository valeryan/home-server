# Home Docker Server

My Docker configuration for a home server.

## What’s Inside

1. Web Server - Nginx proxy server with Let's Encrypt integrated

## Additional Modules

1. [Mineos](https://github.com/valeryan/home-server-mineos) - Minecraft hosting server gui
1. [Nextcloud](https://github.com/valeryan/home-server-nextcloud) - Personal cloud backup server
1. [Jellyfin](https://github.com/valeryan/home-server-jellyfin) - A media streaming server

## Setup

1. Copy `.env.example` to `.env` and set a valid certificate contact email.
1. When using rootless Podman, set `CONTAINER_SOCKET` to the socket reported by
   `podman info --format '{{.Host.RemoteSocket.Path}}'` and enable it with
   `systemctl --user enable --now podman.socket`.
1. Ensure the container engine can bind host ports 80 and 443. Rootless Podman
   commonly requires an administrator to set
   `net.ipv4.ip_unprivileged_port_start=80` in `/etc/sysctl.d` first.
1. Run `docker compose pull` and `docker compose up -d`.

Proxied application containers must join the external `proxy-tier` network and
set `VIRTUAL_HOST` and `ACME_HOST` to their public hostname. Set `VIRTUAL_PORT`
when the application does not expose port 80.

The ACME companion creates a self-signed default certificate for unknown HTTPS
hosts. It is only a fallback certificate; trusted Let's Encrypt certificates
are still issued per application container after it declares `ACME_HOST`.

The default HTTP-01 challenge requires public DNS to resolve to this server and
inbound ports 80 and 443 to reach it. Use DNS-01 instead when those ports cannot
be exposed. If upgrading older application stacks, replace `LETSENCRYPT_HOST`
and `LETSENCRYPT_EMAIL` with `ACME_HOST` and `ACME_EMAIL`.
