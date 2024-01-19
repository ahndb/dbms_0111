#! 제약조건(Constraint)
# : 데이터의 정확성, 일관성, 신뢰성, 무결성을 유지하기 위해
# : 데이터베이스 시스템에 의해 강제되는 규칙

#! 제약조건의 종류
# Primary Key, Foreign Key, Unique, check, default, null허용

#! 기본 키 제약조건(PK)
# : 테이블의 각 행을 고유하게 식별하는 열, 식별자

# 1. 중복 될 수 없음.
# 2. null 값이 될 수 없음.
# 3. 하나의 테이블 당 기본 키 1개만 지정 가능
# > 테이블의 특성을 가장 잘 반영한 열 선택을 권장
# 예) members > members_id, posts > posts_id
#	 책 - ISBN 번호(고유번호)

# 샘플 데이터 베이스 생성
create database `example`;

-- example 데이터베이스 지정
use `example`;

-- PK키 지정 테이블 생성
create table `Students` (
	-- 제약조건 설정(PK): primary key 키워드 사용
    -- 컬럼명 데이터타입 제약조건
    student_id int primary key,
    name varchar(100),
    major varchar(100)
);

-- create table `Students` (
-- 	 *제약조건 설정(PK): primary key 키워드 사용
--   컬럼명 데이터타입 제약조건
--   *student_id int primary key,
--   name varchar(100),
--   major varchar(100),
--   *제약조건 (설정할 컬럼명)
--   *primary key(student_id)
-- );

# 기본 키 설정 테이블에 중복된 값 지정
insert into `Students` (student_id, name, major)
values (1, "이승아", "A전공");
insert into `Students` (student_id, name, major)
values (2, "이도경", "B전공");
-- insert into `Students` (student_id, name, major)
-- values (2, "진현지", "C전공"); - Error(기본키 충돌)

# 제약 조건 삭제
# : drop 제약 조건
alter table `Students`
drop primary key;

# 제약 조건(옵션) 수정 (alter table 테이블명)
# 제약 조건 추가 
# : add 제약조건(열이름)

alter table `Students`
add primary key(student_id);

desc `Students`






