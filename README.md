# deployment
Deploy all services with docker-compose

## Usage

### Proxy and tls
Set your email address in the docker compose to get let's encrypt tls certificates or delete that service and use your own nging configuration. In that case you can look at ./conf.d/nginx.conf to see the proxy configuration.

### Postgres
The postgres db is initiated with the init-user.sh to create users for the user server and the api server. Change the passwords and/or user names. To that also in the docker compose.

### Start the services
```bash
docker-compose up -d
```

### Verify
To see running containers do
```bash
docker container list
```
To see logs of container do
```bash
docker logs <container name>
```
To get a terminal for postgres
```bash
docker exec -it <postgres container name> sh
psql -U fapi -d flotte_api
```
