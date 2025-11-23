# PostgresDocker
## Details
The docker compose file will create the docker container with postgres. The docker image of postgres has a feature that will run scripts on first creation. The scripts are found in the init folder.
### run docker in EC2
When using an EC2, connect an IAM role to the EC2 to have access to the secret manager and attach the AWSDockerInstall Script, or else supply it through wget 
### connecting to the container
run the command `sudo docker exec -it pg psql -U postgres -d medicalsuite` to connect to the container. change the username or database when needed, for example change `-U postgres` to `-U medadmin`
### show tables and db
to show tables and db type `\dt *.*` or `\l`
### reset image
if there are any errors exit the container and type `sudo docker compose down -v` and also delete the generated db folder with the command `sudo rm -rf ./db`

### Note
ensure docker is installed onto your machine
sql scripts where made with teammate: https://github.com/DavidCliff9/Project300/tree/main/Pro300 
