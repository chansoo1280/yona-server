FROM ubuntu:20.04
### TimeZone 환경 변수 지정
ENV TZ Asia/Seoul

### TimeZone 설정   
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt update && apt -y install git vim wget openjdk-8-jdk unzip

## set environment variables 
ENV YONA_DATA "/yona-data" 
ENV JAVA_OPTS "-Xmx2048m -Xms1024m" 

## add entrypoints 
WORKDIR /yona-app

CMD ["bin/yona"]