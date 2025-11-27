```bash 

# Create a new container 
docker container run 
	[--name custom_name] #give a name custom name to the container
    [--rm] # errasse the container after exite
	[-it] # execute in interactive mode
	[-d] # execute in background (detached)
    $container_name #hello-world
    [$command] # optional command to execute inside /bin/bash
    
# Exemples: 
docker container run --name meu_container -it ubuntu /bin/bash
docker container run hello-world 

# View all containers 
docker container ls
	[-a] # to see the all even inactivated 
	[-q] # return only the id 

# remove onde 
docker container rm $container_name | $id

# remove all
docker container rm $(docker container ls -aq) 

# execute a commande inside container 
docker exec [-it] $container_id $command 

#exemple
docker exec -it bc1c /bin/bash










```