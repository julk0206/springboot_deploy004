# 1. 실행 환경 (java 21) : 개발하지 않고 실행하니까 JRE만 있으면 된다
FROM eclipse-temurin:21-jre-jammy

# 2. 작업 디렉터리 (FROM 이미지 내부 폴더)g
WORKDIR /app

# 3. JAR 파일 복사 (ADD - 압축 복사하고 해제 : tomcat, nginx , COPY - 복사 : jar, 라이브러리)
#    ARG는 Dockerfile에서 사용할 변수 선언
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar

# 4. 애플리케이션 실행 명령어
ENTRYPOINT [ "java", "-jar", "app.jar" ]