clear

mvn clean package -DskipTests

cp target/spring-boot-aws-sqs-producer-0.0.1-SNAPSHOT.jar ../run/producer/.
