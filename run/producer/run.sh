
AGENT_PATH=xxxx/javaagent.jar

C_HOST=
C_PORT=
C_SSL=
C_ACCOUNT_NAME=
C_ACCOUNT_KEY=

java -javaagent:$AGENT_PATH -Dappdynamics.controller.hostName=$C_HOST -Dappdynamics.controller.port=$C_PORT -Dappdynamics.controller.ssl.enabled=$C_SSL -Dappdynamics.agent.accountName=$C_ACCOUNT_NAME -Dappdynamics.agent.accountAccessKey=$C_ACCOUNT_KEY  -Dappdynamics.agent.applicationName=ledeoliv_sqs -Dappdynamics.agent.tierName=producer  -Dappdynamics.agent.nodeName=prod -jar spring-boot-aws-sqs-producer-0.0.1-SNAPSHOT.jar


