Docker Container
to crate container
cmd: docker crate --name (******) imaagename 134501/2101
** mvn clean package
1: to list running container means
cmd: docker ps 
2. to list all conntainer means 
cmd docker ps -a
3 to start container means 
cmd : docker start  123445 or vishnu dockerer (imaage id) or (name)) 
4: to know dtails about container 
cmd: docker inspect 12345 (container id or name)
5: to know usage of the container
cmd: docker stats (***) container id
5: to delete container
cmd: docker rm -f (container id) 06d1214899c9
: port binding or port maping/port forword?


7: how to run a container in detached mod
cmd:docker run --name mavenwebapp -p 8080:8080 9603775911/docker-web-app:1
*: docker run -d -p <hostPort>:<containerPort> --name <containerName> <ImageName>
8: to know cntainer log
cmd: docker log ***** (conntainerid/name)
9: to run a command in container 
cmd: docker exec ****(container id)
10:to go inside of the container 
cmd: docker exec -it *****(container name/id) bash
11: to sae container changes in image means we have to save it as a image locall
cmd: docker commit container **** id/name **** container image anme
12:  to delete all stoped image and containes 
cmd : docker system  prune
13  to delete all stoprd container 
cmd:   docker rmi -f(docker images -q)

