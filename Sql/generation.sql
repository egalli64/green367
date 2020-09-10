use green;

drop table if exists users;

create table users(
	user_id integer primary key auto_increment,
	user_name varchar(50) not null,
	user_password varchar(50) not null
);

insert into users(user_id,user_name,user_password) values('1','francescogreen','Greenfrancesco1');
insert into users(user_id,user_name,user_password) values('2','davidegreen','Greendavide1');
insert into users(user_id,user_name,user_password) values('3','eelisagreen','Greenelisa1');
insert into users(user_id,user_name,user_password) values('4','patriziagreen','Greenpatrizia1');
insert into users(user_id,user_name,user_password) values('5','maaurogreen','Greenmauro1');
insert into users(user_id,user_name,user_password) values('6','emiliagreen','Greenemilia1');

commit;