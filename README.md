# deployment
Deploy all services with docker-compose

## Usage

### Proxy and tls
Set your email address in the docker compose and replace _DOMAIN_NAME_ with you public domain, where you want to deploy the flotte db project, to get let's encrypt tls certificates or delete that service and use your own nginx configuration. In that case you can look at ./conf.d/nginx.conf to see the proxy configuration.

### Postgres
The postgres db is initiated with the init-user.sh to create users for the user server and the api server. Change the passwords and/or user names. Do that also in the docker compose.

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
