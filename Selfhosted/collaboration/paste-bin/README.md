Paste Bins
==========

## PrivateBin

A minimalist, open source online pastebin where the server has zero knowledge of pasted data. Data is encrypted/decrypted in the browser using 256 bits AES.

- [Github](https://github.com/PrivateBin/PrivateBin) (⭐ 5.5k)
- [Docker Compose](https://github.com/PrivateBin/docker-nginx-fpm-alpine)

```sh
docker run -d --restart="always" --read-only -p 5200:8080 -v ./privatebin-data:/srv/data privatebin/nginx-fpm-alpine
```

## Microbin

A secure, configurable file-sharing and URL shortening web app written in Rust.

[Github](https://github.com/szabodanika/microbin) (⭐ 2k)

![microbin UI](microbin.png)


## Other

- [Drift](https://github.com/MaxLeiter/drift) Self-hostable Gist and paste service. Built with Next.js 13 and React Server Components. (⭐ 1.3k)
- [rustypaste](https://github.com/orhun/rustypaste) A minimal file upload/pastebin service. (⭐ 600)
- [OpenGist](https://github.com/thomiceli/opengist) Self-hosted pastebin powered by Git, open-source alternative to Github Gist. (⭐ 598)
