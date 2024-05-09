FROM openjdk:8

# Copy the JAR file
ADD build/libs/Facidemo-2.0.jar test.jar

# Expose port
EXPOSE 8068

# Add database creation script
ADD create_database.sh /create_database.sh

# Run database creation script and then start Java application
CMD ["sh", "-c", "/create_database.sh && java -jar test.jar"]
