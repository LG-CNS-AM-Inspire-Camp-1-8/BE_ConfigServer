#!/bin/bash

# 1. Gradle의 bootJar 실행 (Spring Boot 애플리케이션 JAR 파일 빌드)
echo "Building the application JAR using Gradle..."
./gradlew bootJar

# 2. Docker 이미지 빌드
echo "Building Docker image..."
docker build -t honey0928/configserver:latest .

# 3. Docker 이미지 푸시
echo "Pushing Docker image to the registry..."
docker push honey0928/configserver:latest

echo "Deployment completed!"
