# Docker Cheat Sheet


## Basic commands 

```bash 
# Create a new container 
docker container run 
    [--name custom_name] # give a custom name to the container
    [--rm] # erase the container after exit
    [-it] # execute in interactive mode
    [-d] # execute in background (detached)
    [-p local_port:container_port] # publish port
    $image_name # image name (e.g., hello-world, ubuntu, nginx)
    [$command] # optional command to execute (e.g., /bin/bash)
    
## Examples: 
docker container run --name meu_container -it ubuntu /bin/bash
docker container run hello-world 

# View all containers 
docker container ls
    [-a] # show all containers (including stopped ones)
    [-q] # return only the container IDs

# Execute a command inside a running container 
docker exec [-it] $container_id $command 

## Example
docker exec -it bc1c /bin/bash

# Port publish / Port Binding 
docker container run 
    -d # run in background
    -p $local_port:$container_port 
    $image_name 
    [$command]

## Example 
docker container run -d -p 8080:80 nginx

# Stop / Start containers
docker container stop $container_id 
docker container start $container_id

# Remove one container
docker container rm 
    [-f] # force removal (even if running)
    $container_name | $container_id

# Remove all stopped containers
docker container rm $(docker container ls -aq)
# or force remove all (including running)
docker container rm -f $(docker container ls -aq)

# or using xargs
docker container ls -aq | xargs docker container rm -f

# view log 
docker logs $container_id

# debug any container 
docker debug $container_id

# Environmental Variables 
-e VARIABLE_NAME="value" -e VARIABLE_NAME2="value2" ...

### example
docker run -it --rm -p 5432:5432 -e POSTGRES_PASSWORD=906255 postgres:18.1

```