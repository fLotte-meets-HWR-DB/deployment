# deployment
Deploy all services with docker-compose

## Usage

### Proxy and tls
Set your email address in the docker compose and replace _DOMAIN_NAME_ with you public domain, where you want to deploy the flotte db project, to get let's encrypt tls certificates or delete that service and use your own nginx configuration. In that case you can look at ./conf.d/nginx.conf to see the proxy configuration.

### Postgres
The postgres db is initiated with the init-user.sh to create users for the user server and the api server. Change the passwords and/or user names. Do that also in the docker compose.

### Front End
The front end is written in angular and thus is a single page application. The paths to the back ends [API](https://github.com/fLotte-meets-HWR-DB/apollo-server) and [user server](https://github.com/fLotte-meets-HWR-DB/flotte-user-management) are backed into it. They need to be specified before you compile the type script. Meaning every time you change the paths to the back end, you need to rebuild the front end container with the new urls.

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
