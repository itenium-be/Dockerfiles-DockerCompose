IDEs
====

## Code-Server

[Github](https://github.com/coder/code-server) (⭐ 63.5k)

```yaml
version: "2.1"

services:
  code-server:
    image: lscr.io/linuxserver/code-server:latest
    container_name: code-server
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Etc/UTC
      - PASSWORD=password #optional
      - HASHED_PASSWORD= #optional
      - SUDO_PASSWORD=password #optional
      - SUDO_PASSWORD_HASH= #optional
      - PROXY_DOMAIN=code-server.my.domain #optional
      - DEFAULT_WORKSPACE=/config/workspace #optional
    volumes:
      - /path/to/appdata/config:/config
    ports:
      - 8443:8443
    restart: unless-stopped
```


### Other IDEs

- [Eclipse Che](https://github.com/eclipse/che) Kubernetes based Cloud Development Environments for Enterprise Teams (⭐ 6.9k)
- [Theia](https://github.com/eclipse-theia/theia) Eclipse Theia is a cloud & desktop IDE framework implemented in TypeScript. (⭐ 18.6k)
