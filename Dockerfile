# 基础镜像（Java环境）
# 原来：FROM eclipse-temurin:8-jdk-alpine
# 修改为完整路径：
FROM docker.io/library/eclipse-temurin:8-jdk-alpine

# 工作目录
WORKDIR /app
# 复制编译好的jar包（Maven打包后的文件名，适配demo项目）
COPY target/*.jar app.jar
# 暴露端口（SpringBoot默认8080）
EXPOSE 8080
# 启动命令
ENTRYPOINT ["java", "-jar", "app.jar"]
