docker1 id:9603775911
password:Vishnu$123
  docker login -u "9603775911" -p "Vishnu$123" docker.io

password:Vishnu$123
docker2 id: vishnureddyvcr
 password: Vishnu$123
Email:vishnucse523@gmail.com
git id:vishnureddyls
password:Vishnu$123
git:
mail:vishnucse523@gmail.com
pass:Vishnu$$1234
user name:vishnureddyvcr 

/usr/local/tomcat/webapp


Docker
 Commands :
 ****mvn clean package
sp <Imag Name>
 TO create image   <registry/repo:Tag>
 docker build -t  ****** (image name)
1 Docker Image: Docker Images
#list local images

2 docker push <ImageName> 
# To push image
3 docker pull <ImageName>
#to pull image 
4.To Delete the image
CMD: docker rmi (12346678) <imageName>
5. To Delete All the image
exp: docker rmi -f  -$(docker images -q) (to Delete All image)

6 docker image inspect <ImagaName/Id>
To give detail image information 
7. docker tag <newname> <existingname>
8 create container 
cmd: docker run -d --name ( container name) -p(port) 8080:8080 docker image name
EXp:docker run -d --name mavencontainer -p 8080:8080 vishnureddyvcr/docker-web-app:1
9) To display containers 
docker ps
9. how to save image as a tar file 
cmd: docker save image name:tag name -o file name
Emp:docker save  vishnureddyvcr/docker-web-app:1 -o mavenappimage.tar
10. to display list of images and container
docker ps
11.to display port doker
cmd: sudo netstat -tulnp
12 docker working directory
CMD: ls /var/lib/docker

