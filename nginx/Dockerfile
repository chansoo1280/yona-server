FROM nginx:latest

### TimeZone 환경 변수 지정
ENV TZ Asia/Seoul

### TimeZone 설정   
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf


CMD ["nginx", "-g", "daemon off;"]