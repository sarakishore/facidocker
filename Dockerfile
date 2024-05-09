FROM openjdk:17
ADD build/libs/Facidemo-2.0.jar Facidemo.jar
EXPOSE 7667
ENTRYPOINT ["java", "-jar","Facidemo.jar"]
