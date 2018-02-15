FROM openjdk:8-jdk-alpine
VOLUME /tmp
ENTRYPOINT ["/usr/bin/java", "-jar", "/usr/share/springboot-helloworld/springboot-helloworld.jar"]

# Add Maven dependencies (not shaded into the artifact; Docker-cached)
ADD target           /usr/share/springboot-helloworld/lib
# Add the service itself
ARG JAR_FILE
ADD target/${JAR_FILE} /usr/share/springboot-helloworld/springboot-helloworld.jar
