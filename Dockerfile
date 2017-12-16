FROM maven:3.3-jdk-8-onbuild

FROM openjdk:jre-alpine
COPY --from=0 /usr/src/app/target/demo-swarm.jar /opt/demo.jar
CMD ["java","-jar","/opt/demo.jar"]