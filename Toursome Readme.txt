<3팀 Toursome Readme>

1. 컴파일 실행 환경 = JAVA SDK 1.8, ORACLE 11g, TOMCAT 9.0 , STS

================================================================

2. 적용 기술 = Spring MVC, Mybatis, JAVA, JSP, HTML, CSS, BootStrap, Jquery(AJAX, JSON) , OracleDB

=================================================================

3. Oracle11g에 권한 부여
sqlplus system / System1234;  -- 데이터베이스 관리자 아이디인 system 계정에 비밀번호 System1234 입력 후 접속

CREATE USER admin IDENTIFIED BY 1234;         -- 사용자 아이디가 admin이고, 비밀번호가 1234인 사용자 계정을 생성.
GRANT CONNECT, RESOURCE, DBA TO admin;  -- 생성된 admin 계정에 CONNECT, RESOURCE, DBA 롤 권한을 부여.
GRANT ALTER SESSION TO admin;                  -- 추가적으로 생성된 admin 계정에 SESSION 권한을 부여.

show user;		-- 현재 접속된 사용자 정보 system

conn admin/1234;		-- conn 명령어로 system 계정을 admin 계정으로 변경 접속

show user;		-- 현재 접속된 사용자 정보 admin

drop table membership cascade constraints;	-- membership 테이블 생성 전 기존에 생성했던 membership 테이블 삭제

create table membership(
id varchar2(20) not null,
password varchar2(20) not null,
email varchar2(50) not null,
name varchar2(10) not null,
p_num varchar(20) not null,
address varchar2(100) not null,
gender char not null,
age int not null,
replycnt number default 0
);				-- membership 테이블 생성

alter table membership add constraint pk_member primary key(id);  	-- membership 테이블 기본키 지정

create sequence seq_board
increment by 1
start with 0
maxvalue 9999999
minvalue 0; 		-- 게시판 시퀀스 생성

create table tbl_board (
bno number(10, 0),
title varchar2(200) not null,
content varchar2(2000) not null,
writer varchar2(50) not null,
regdate date default sysdate,
updatedate date default sysdate
);			-- 게시판 테이블 생성

alter table tbl_board add constraint pk_board primary key (bno); 	-- 게시판 테이블 기본키 지정

alter table tbl_board add constraint fk_board  
foreign key (writer)  references  membership(ip) on delete cascade; 	-- 게시판 테이블 외래키 cascade 지정

drop SEQUENCE seq_reply;
create sequence seq_reply
increment by 1
start with 0
maxvalue 9999999
minvalue 0;			-- 댓글 시퀀스 생성

create table tbl_reply (
  rno number(10,0), 
  bno number(10,0) not null,
  reply varchar2(1000) not null,
  replyer varchar2(50) not null, 
  replyDate date default sysdate, 
  updateDate date default sysdate
);				-- 댓글 테이블 생성

alter table tbl_reply add constraint pk_reply primary key (rno);	-- 댓글 테이블 기본키 지정

alter table tbl_reply  add constraint fk_reply_board  
foreign key (bno)  references  tbl_board (bno) on delete cascade;	-- 댓글 테이블 외래키 cascade 지정

alter table tbl_board add (replycnt number default 0);	-- 댓글Cnt 칼럼 추가

commit; 			-- 커밋으로 수정사항 저장.

=================================================================

4. Toursome WebSite 주요기능 및 기술

   1) 로그인
      - 로그인(ID / PASSWORD 찾기), 로그아웃
      - 회원 가입, 회원정보 수정
      - 회원 탈퇴 : 작성했던 게시글과 댓글까지 함께 삭제
      - 로그인 성공 시에만 게시글/댓글 수정 가능

    2) 게시판
      - 게시글 등록/수정/삭제 : 제목, 본문 입력.
      - 게시글 상세 : 게시글 제목, 본문, 작성자, 댓글 표시
      - 게시글 목록 조회 : 페이징 처리, 검색 처리
      - 게시글 댓글 등록/수정/삭제

=================================================================

5.  기타 사항

    1) 전체 프레임워크는 Spring이며, Tomcat, OracleDB 등을 사용

    2) JAVA (controller, domain, exception, mapper, Service) + xml(mybatis)로 구성

    3) 프론트 레이아웃은 BootStrap을 활용한 템플릿 사용

    4) Script는 jQuery 적용