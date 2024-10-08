FROM openjdk:24-jdk-slim

WORKDIR /app

ARG imageName

ENV IMAGE_NAME=${imageName}

COPY target/${IMAGE_NAME}.jar ${IMAGE_NAME}.jar

ENTRYPOINT [ "sh","-c","java -jar /app/${IMAGE_NAME}.jar"]