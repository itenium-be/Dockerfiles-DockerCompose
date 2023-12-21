CRON
====

## Ofelia

A docker job scheduler (aka. crontab for docker)

[Github](https://github.com/mcuadros/ofelia/) (⭐ 2.6k)

```yaml
version: "3"

services:
  ofelia:
    image: mcuadros/ofelia:latest
    depends_on:
      - nginx
    command: daemon --docker
    volumes:
      - /var/run/docker.sock:/var/run/docker.sock:ro
    labels:
      ofelia.job-local.my-test-job.schedule: "@every 5s"
      ofelia.job-local.my-test-job.command: "date"

  nginx:
    image: nginx
    labels:
      ofelia.enabled: "true"
      ofelia.job-exec.datecron.schedule: "@every 5s"
      ofelia.job-exec.datecron.command: "uname -a"
```

## Other

[Github](https://github.com/aptible/supercronic) Cron for containers (⭐ 1.6k)
[Github](https://github.com/crazy-max/swarm-cronjob) Create jobs on a time-based schedule on Docker Swarm (⭐ 669)
[Github](https://github.com/nicomt/ckron) 🐋 A cron-like job scheduler for docker (⭐ 49)
