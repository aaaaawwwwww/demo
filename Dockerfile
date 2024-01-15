FROM openjdk:17-jdk-slim

## HOME DIR 이라고 함
## 이동할 경로
## 경로가 없을 경우, 생성 후 이동
## 이후 명령어는 good이라는 workdirectory 경로에서 실행됨
WORKDIR /good

## [문법] Copy 현재파일위치 복사할위치
COPY build/libs/demo-0.0.1-SNAPSHOT.jar ./demo.jar

COPY hello.sh ./hello.sh

## RUN 리눅스 명령어
## chmod : change mod
## hello.sh 파일에 실행권한 추가
RUN chmod +x ./hello.sh

ENTRYPOINT [ "sh", "./hello.sh" ]

