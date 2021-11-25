# 이슈관리 프로그램 요나

## 필요한 사전지식

- yona
  - https://github.com/yona-projects/yona
- aws ec2
  - https://aws.amazon.com/ko/?nc2=h_lg
- docker + docker-compose
  - https://www.docker.com/
- nginx
  - https://aimaster.tistory.com/11

## 서버 실행하기

1. putty로 ssh접속
2. `sudo su`로 권한 바꾸기
3. `cd /home/ubuntu/yona-server`
4. `git pull`로 소스 다운(처음에는 토큰 발행해서 `git clone https://${게정이름}:${토큰}@github.com/widline-dev/yona-server.git`, [참고](https://hoohaha.tistory.com/37))
5. `docker ps`로 docker 실행중인지 확인(빈 표 나오면 성공)
   - 안 된다면 조금 더 기다리거나 docker 설치
6. `docker-compose up -d`(다시 빌드해야하는 경우 `docker-compose up --force-recreate --build -d`)
7. `docker system prune -f`로 안 쓰는 것들 지우기
8. `ctrl + d`연타로 로그아웃

## nginx ssl 인증서 얻기

1. ./nginx/default.conf의 **인증서 받기 전**부분을 주석 해제하고 **인증서 받은 후**부분을 주석 처리
2. `docker-compose up --force-recreate --build -d`로 다시 키기
3. `docker-compose logs`로 certbot에 오류 없는지 확인하고 ./nginx/default.conf의 주석 다시 원복하기
4. `docker-compose up --force-recreate --build -d`로 다시 키기

## db 백업/복원

1. MySQL Workbench 같은걸로 db 접속

- [About the MySQL for IU Sitehosting data backup and restoration policy](https://kb.iu.edu/d/apnn) 참고
- Unknown table 'COLUMN_STATISTICS' in information_schema (1109) 에러가 뜬다면 [여기](https://insomniachaos.tistory.com/197) 참고
