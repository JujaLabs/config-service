FROM gradle:4.3.1-jdk8 as builder
ADD src src
ADD build.gradle .
RUN gradle build

FROM openjdk:8-jre
COPY --from=builder /home/gradle/build/libs/configuration-service-*.jar app.jar
ADD config /config

ENTRYPOINT [ "sh", "-c", "java -Djava.security.egd=file:/dev/urandom -jar /app.jar" ]
