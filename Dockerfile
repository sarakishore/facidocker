FROM openjdk:8
ADD build/libs/Facidemo-2.0.jar facitest.jar
EXPOSE 8067
ENTRYPOINT ["java","-jar","facitest.jar"]
