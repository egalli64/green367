use green;

drop table if exists users;

create table users(
	user_id integer primary key auto_increment,
	user_name varchar(50) not null,
	user_email varchar(50) not null,
	user_password varchar(50) not null,
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	user_cf varchar(50) not null,
	cap integer
);

insert into users(user_id,user_name,user_email,user_password,first_name,last_name,user_cf,cap) values('1','francescogreen','francesco@green.it','Greenfrancesco1','Francesco','Restifo','FRCRTF93Z23B432H','20088');
insert into users(user_id,user_name,user_email,user_password,first_name,last_name,user_cf,cap) values('2','davidegreen','davide@green.it','Greendavide1','Davide','Lapi','LPADVD97B15C523Y','20096');
insert into users(user_id,user_name,user_email,user_password,first_name,last_name,user_cf,cap) values('3','eelisagreen','elisa@green.it','Greenelisa1','Elisa','Mani','ELALSA96J21K467Z','20197');
insert into users(user_id,user_name,user_email,user_password,first_name,last_name,user_cf,cap) values('4','patriziagreen','patrizia@green.it','Greenpatrizia1','Patrizia','Gironi','PTAGRI94F11L891S','20200');
insert into users(user_id,user_name,user_email,user_password,first_name,last_name,user_cf,cap) values('5','maaurogreen','mauro@green.it','Greenmauro1','Mauro','Forte','MROFRT93Z08O765P','21098');
insert into users(user_id,user_name,user_email,user_password,first_name,last_name,user_cf,cap) values('6','emiliagreen','emilia@green.it','Greenemilia1','Emilia','Faraci','EMLFRI98D19I785Q','20095');

commit;