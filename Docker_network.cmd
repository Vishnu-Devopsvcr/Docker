to show network ports
cmd: docker network ls
to create brodge:
cmd: docker network  create -d bridge name=fipcart(bridge name)
to acces out of the network bridge container
cmd: docker network connect flipkart(existing network name) ngins new container name
exp:docker network connect flipkart ngins
to go inside of container
cmd: docker exec -it mavenwebapp bash{(container name)/containerid} bash
----
# Create Network
Syntax: docker network create -d <driver> <networkName>
Ex: 
docker network create -d bridge flipkartnetwork
-------
# Inspect network
docker network inspect <networkNameOrId>
------
If containers are created in custom bridge network. Each container can access other using containerName/ContainerIP.

# Delete Containers which are running in default bridge or create container with different name.

docker run -d --name javawebapp -p 8080:8080  --network flipkartnetwork dockerhandson/java-web-app

docker run -d --name mavenwebapp  --network flipkartnetwork dockerhandson/maven-web-app
-----# Remove unused networks
docker network prune 

# Remove Network
docker network rm <networkNameOrId>

Docker Host Network.

If we create contaienrs in host network. Container will not have IP Address. Container will be created
in a system network.

But we can't create more than one cotnainer with same container port in host network.We no need to do port publish to access
containers.


Docker none/null network

If we create contaienrs in none/null network. Container will not have IP Address.We can't 
accees these contianers from out side or from any other cotnainer.




