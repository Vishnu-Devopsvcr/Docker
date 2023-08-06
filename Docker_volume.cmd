Docker volume:
----
Create docker network using below commond(If it's not created already)
 
 Create Spring Application Container in above network & which will talk to mongo data base container

 docker run -d -p 8080:8080 --name springapp  -e MONGO_DB_HOSTNAME=mongo -e MONGO_DB_USERNAME=devdb -e MONGO_DB_PASSWORD=devdb1234 --network springappnetwork dockerhandson/spring-boot-mongo
-----------  
	 
 Access Spring application & insert data it will be inserted to mongo db. Delete and recreate mongo container 
   what ever you have inserted will no longer be availbale. As once we delete contaienr data also will be deleted
   in container.
---------------------   
   To take data backup from container we have to use volunmes 
   
Bind Mounts:
Bind mounts may be stored anywhere on the host system. They may even be important system files or directories. Non-Docker processes on the Docker host or 
a Docker container can modify them at any time.

# Volumes Using bind mount
mkdir mongodbdata(If not exists)
# Delete container if exists then create
docker run -d --name mongo -v ~/mongodbdata:/data/db  -e MONGO_INITDB_ROOT_USERNAME=devdb -e MONGO_INITDB_ROOT_PASSWORD=devdb1234  --network springappnetwork mongo



Docker Peristent Volumes
Volumes are stored in a part of the host filesystem which is managed by Docker (/var/lib/docker/volumes/ on Linux).
Non-Docker processes should not modify this part of the filesystem. Volumes are the best way to persist data in Docker.

# To list volumes
docker volume ls
	 
create a volume a Local Volume(Execute docker volume ls to check existing volumes)

docker volume create mongodb
	
   
 Use above volume while creating container.

     docker run -d --name mongo -v mongodb:/data/db   -e MONGO_INITDB_ROOT_USERNAME=devdb -e MONGO_INITDB_ROOT_PASSWORD=devdb1234  --network springappnetwork mongo
   
Access Spring application & insert data it will be inserted to mongo db. Delete and recreate mongo container 
   with same volume mapping. You can see the data back.
   
   
Volume Driver Plugin --> It's a piece of code or software which is responsible for creating a storage and attaching the storage to the container.   
    
 ===== Network Volumes Using AWS EBS==========
 
 1) Create IAM User with EC2 Full Access and user access key & Secret Key of the same. Replace your access key & secret below. Or Use Your root aws account access Key & Secret Key.

 docker plugin install rexray/ebs EBS_ACCESSKEY=<ACCESSKEY> EBS_SECRETKEY=<SECRETKEY>
 
 EX:
 
 docker plugin install rexray/ebs EBS_ACCESSKEY=AKIAJRVS26WY3UKXG57Q EBS_SECRETKEY=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

 docker volume create --driver rexray/ebs --name ebsvolume

 docker run -d -p 27017:27017 -v ebsvolume:/data/db  --name mongo -e MONGO_INITDB_ROOT_USERNAME=devdb -e MONGO_INITDB_ROOT_PASSWORD=devdb1234  --network springappnetwork mongo


Map Volumes As Read Only using below option>
-v <volumeName/BindMount>:<containerPath>:ro
