# X-UI panel + XRay-Reality + Traefik + TLS setup

**Thank's a lot for the information and inspiration @MiraclePtr for the article: <https://habr.com/ru/articles/735536/>**
**and @lohmatij for the Traefik configuration idea: <https://habr.com/ru/articles/735536/#comment_25847250>**
**(and all other's useful comments, of course).**

### Prerequisites:
- VPS with public IP
- docker & docker-compose installed



If you don't own a domain name, use
<https://nip.io> / <https://sslip.io>, or similar, to wrap VPS IP with FQDN.
Traefik will issue TLS certs with Let's Encrypt for that DN.

### Start:
- Clone this repo to VPS, change to the project directory
- Fill `.env` accordingly (see `.env.example`).
- Start services:
```
docker-compose -d up
```
or, if `make` is installed:
```
make up
```

### Defaults:
- X-UI panel must be available at `https://xui-your-domain.name:54321`
- Subscription service must be available both at `http://sssub-your-domain.name:4443` and `http://sssub-your-domain.name:4443`
(http redirected to https)
- XRay port must be `443` and Shadowsocket port is arbitrarily set to `33000`, use theese values in `Inbounds` configuration.
- Traefik Dashboard is available at `https://your-domain.name:8443/dashboard/` (needed for `httpchallenge` by Let's Encrypt).
