FROM openjdk:17
EXPOSE 8090
EXPOSE 3306
COPY . .

ENV USER=root
ENV PASSWORD=admin
ENV URL=jdbc:mysql://127.0.0.1:3306/socialnetwork
ENV SECRET_KEY=SECRET_KEY

ENTRYPOINT ["java", "-jar", "/target/SocialNetwork-0.0.1-SNAPSHOT.jar"]

