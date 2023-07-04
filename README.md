# Verilator + SystemC docker

Verilator와 SystemC가 미리 설치된 도커 이미지 입니다.

C++ 버전은 C++17로 설정되어 있습니다.

# Docker Hub

[도커허브 링크](https://hub.docker.com/repository/docker/dabinl1258/verilator-systemc/general)

위 링크에서 pull 받기

```bash
docker push dabinl1258/verilator-systemc:tagname
```

# Verilator

Verilator는 make를 이용해서 설치 되었습니다.

Verilator V5.012 버전 [링크](https://github.com/verilator/verilator/releases/tag/v5.012)

# SystemC

SystemC는 cmake + ninja를 이용해서 빌드되어 있습니다.

SystemC 2.3.4 [링크](https://github.com/accellera-official/systemc/releases/tag/2.3.4)

# How to build

```bash
docker build . -t "REPOSITORY:TAG"
```
