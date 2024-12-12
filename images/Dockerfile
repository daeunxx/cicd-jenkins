# 1. Ubuntu 기반 이미지 사용
FROM ubuntu:20.04

# 2. 필수 패키지 업데이트 및 설치 (SSH 및 Tomcat 설치에 필요한 패키지들)
RUN apt-get update && \
    apt-get install -y openssh-server wget && \
    apt-get clean

# 3. SSH 서버 설정
RUN mkdir /var/run/sshd

# 4. Tomcat 다운로드 및 설치
RUN wget --no-check-certificate https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.98/bin/apache-tomcat-9.0.98.tar.gz
RUN tar -xvf apache-tomcat-9.0.98.tar.gz -C /opt/
RUN mv /opt/apache-tomcat-9.0.98 /opt/tomcat
RUN rm apache-tomcat-9.0.98.tar.gz

# 5. SSH 서비스 포트 설정
EXPOSE 22 8080

# 6. SSH와 Tomcat을 동시에 실행할 수 있도록 설정
CMD /usr/sbin/sshd -D & /opt/tomcat/bin/catalina.sh run

