# PostgresDocker
## Details
The docker compose file will create the docker container with postgres. The docker image of postgres has a feature that will run scripts on first creation. The scripts are found in the init folder.
### run docker
in the directory run the command `sudo docker compose up -d` or `sudo docer-compose up -d` depending on what version you have. This will create the container
### connecting to the container
run the command `sudo docker exec -it pg psql -U postgres -d medicalsuite` to connect to the container. change the username or database when needed, for example change `-U postgres` to `-U medadmin`
### show tables and db
to show tables and db type `\dt *.*` or `\l`
### reset image
if there are any errors exit the container and type `sudo docker compose down -v` and also delete the generated db folder with the command `sudo rm -rf ./db`
