# monorepo

## 설치하기

1.  프로젝트 클론

    git clone https://github.com/ppsea/monorepo.git

2.  yarn 버전 berry로 설정

    yarn prepare

3.  dependency 설치

    옵션1. plugin + dependency

        yarn install

    옵션2. dependency만

        yarn

## 워크스페이스 별 command 실행

yarn workspace <workspaceName> <commandName>

ex: yarn workspace core add typescript --dev

## 전체 워크스페이스 command 실행

yarn workspace foreach [-a,--all] [-v,--verbose] [-p,--parallel] [-i,--interlaced] [-j,--jobs #0] [-t,--topological] [--topological-dev] [--include #0] [--exclude #0] [--private] <commandName> ...
