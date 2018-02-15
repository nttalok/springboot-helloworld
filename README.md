# springboot-helloworld
Pre-requisite:
   Maven 3.0.5
   Java 1.8
   Maven docker plugin: https://github.com/spotify/dockerfile-maven
 
To package and build docker image:
    mvn package

Run docker image:
docker run -p 8080:8080 springboot/helloworld
