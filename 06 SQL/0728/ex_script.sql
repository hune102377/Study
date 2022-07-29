-- Active: 1658998305252@@127.0.0.1@3306@testdb
use testdb;

create table person
	(person_id smallint unsigned,
	fname varchar(20),
	lname varchar(20),
	eye_color Enum('BR','BL','GL'),
	birth_date date,
	street varchar(30),
	city varchar(20),
	state varchar(20),
	country varchar(20),
	postal_code varchar(20),
	constraint pk_person primary key (person_id)
	);

desc person;

create table favorite_food
	(person_id smallint unsigned,
	food varchar(20),
	constraint pk_favorite_food primary key (person_id, food),
	constraint fk_fav_food_person_id foreign key (person_id)
	references person(person_id)
	)
	
desc favorite_food;

set foreign_key_checks=0; # 제약 조건 비활성화

alter table person modify person_id smallint unsigned auto_increment;

set foreign_key_checks=1; # 제약 조건 활성화

select * from person;
select * from favorite_food;

insert into person
(person_id, fname, lname, eye_color, birth_date, state)
values (null, 'William', 'Turner', 'BR', '1972-05-27', 'America');

insert into favorite_food (person_id, food)
values (1, 'pizza'), (1, 'cookie'), (1, 'nachos');

insert into favorite_food 
(person_id, food)
values (10, 'Beer')

select person_id, fname, lname, birth_date from person; # person 테이블에서 person_id, fname, lname, birth_date 열만 보기

select person_id, fname, lname, birth_date
from person where lname = 'Turner'; # lname이 Turner인 사람만 보기

delete from person where person_id=4; # where 절을 생략하면 테이블의 모든 데이터가 삭제
drop table table_name; # 테이블 삭제 

select food from favorite_food
where person_id = 1 order by food; # food 열을 기준으로 오름차순 정렬 (뒤에 DESC를 붙이면 내림차순으로 정렬)

insert into person
(person_id, fname, lname, eye_color, birth_date, street, city, state, country, postal_code)
values (null, 'Susan', 'Smith', 'BL', '1975-11-02', '21 Mapel St.', 'Arlington', 'VA', 'USA', '20220');

select person_id, fname, lname, birth_date from person;

update person # 기존의 데이터를 수정하는 함수
set street = '1225 Tremon St.',
city = 'Boston',
state = 'MA',
country = 'USA',
postal_code = '02138'
where person_id = 3;
