# Wordpress

- [Wordpress blog](http://127.0.0.1:31337)
- [Wordpress admin](http://127.0.0.1:31337/wp-login.php)


## Usage

```sh
# If you want to recreate the mysql db (later Docker version, add -f)
docker-compose down -v

# Spin up
docker-compose up -d --build
chmod +x install-wp.sh
# Wait a little for the mysql to spin up..
docker-compose run --rm wp-cli install-wp
```
