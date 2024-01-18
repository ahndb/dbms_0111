# DDL
# 1. DDL의 기본 구성요소
# 데이터베이스: 관련 데이터의 모음

# 테이블: 데이터를 저장하는 기본 단위
# >> 행과 열로 구성
# >> 각 행은 데이터 레코드(집합), 각 열은 특정 속성(필드)

# 필드 / 컬럼: 데이터의 특정 유형 지정, 각 필드는 고유한 이름과 데이터 타입을 가짐

# 데이터 타입: 필드에 저장할 수 있는 데이터 종류를 정의
# ----- 데이터베이스 ------
# 2. 데이터베이스 생성(create)
# : 데이터를 저장하고 관리하는 첫 단계
# 기본 형태
# : create database database_name;
create database database_name;

# 3. 데이터베이스 선택(use)
# : 생성한 데이터베이스를 사용하기 위해서는 해당 데이터베이스를 선택하여야 함.
# : 선택하지 않을 경우 해당 데이터베이스 내의 구성요소를 사용할 수 없음.
# : 선택한 경우 모든 SQL 명령어는 선택된 데이터베이스 내에서 실행
# 기본형태
# : use database_name;
use database_name;
use world;

# 4. 데이터베이스 삭제(drop database)
# : 데이터베이스를 삭제하는 기능, 해당 작업은 실행 후 되돌릴 수 없다.
# 기본형태
# : drop database database_name;
drop database database_name;

# 5. 데이터베이스 목록 조회(show databases)
# : 서버에 존재하는 모든 데이터베이스 목록을 확인
# 기본형태
# : show databases;
show databases;

# ----- 테이블 ------
# 1. 테이블 생성(create table)
# : 새로운 테이블을 생성, 테이블에 저장될 데이터의 형태와 특성을 정의
# : >> 데이터타입, 제약조건, 기본값 등을 설정 가능

# 기본형태
# create table table_name(
#	column1 datatype [optionals], 
#	column2 datatype [optionals], 
#	column3 datatype [optionals], 
#	... 
# )

# optionals: 컬럼에 적용할 선택적 특성 - not null지정, 기본값 설정 등
create database example;
use example;
create table students (
	student_id int,
    name varchar(100) not null,
    age int not null,
    major varchar(100)
);
 

