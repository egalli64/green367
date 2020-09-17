use green;


drop table if exists bookings;
drop table if exists times;
drop table if exists exam_hospitals;
drop table if exists exams;
drop table if exists hospitals;
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


create table hospitals(
	hospital_id integer primary key,
    hospital_name varchar(50),
    hospital_address varchar(50),
    hospital_cap integer,
    hospital_city varchar (20)
    );
    
insert into hospitals(hospital_id,hospital_name,hospital_address,hospital_cap,hospital_city) values('100', 'Ospedale Sacco', 'Piazza Leonardo', 20100, 'Milano');
insert into hospitals(hospital_id,hospital_name,hospital_address,hospital_cap,hospital_city) values('101', 'Ospedale Niguarda', 'Piazza Piola', 20100, 'Milano');
insert into hospitals(hospital_id,hospital_name,hospital_address,hospital_cap,hospital_city) values('102', 'Ospedale San Raffaele', 'Cascina Gobba', 20100, 'Milano');

commit;


    

create table exams(
	exam_id integer primary key auto_increment,
    exam_name varchar(50),
    exam_department varchar (50)
    );
    
insert into exams(exam_id,exam_name,exam_department) values (1,'Pulizia dentale','Odontoiatria'); 
insert into exams(exam_id,exam_name,exam_department) values (2,'Estrazione dente','Odontoiatria'); 
insert into exams(exam_id,exam_name,exam_department) values (3,'Rimozione carie','Odontoiatria'); 
insert into exams(exam_id,exam_name,exam_department) values (4,'Controllo nei','Dermatologia'); 

commit;


create table exam_hospitals(
	hospital_id integer,
    exam_id integer,

	constraint exam_hospital_pk primary key(hospital_id, exam_id),
    constraint examhospital_fk foreign key (hospital_id) references hospitals(hospital_id),
	constraint exam_hospital_fk foreign key (exam_id) references exams(exam_id)
);

insert into exam_hospitals(hospital_id,exam_id) values(100,1);
insert into exam_hospitals(hospital_id,exam_id) values(101,1);
insert into exam_hospitals(hospital_id,exam_id) values(102,1);
insert into exam_hospitals(hospital_id,exam_id) values(100,4);
insert into exam_hospitals(hospital_id,exam_id) values(100,2);
insert into exam_hospitals(hospital_id,exam_id) values(101,2);
insert into exam_hospitals(hospital_id,exam_id) values(102,2);
insert into exam_hospitals(hospital_id,exam_id) values(101,4);
insert into exam_hospitals(hospital_id,exam_id) values(100,3);
insert into exam_hospitals(hospital_id,exam_id) values(101,3);
insert into exam_hospitals(hospital_id,exam_id) values(102,3);
insert into exam_hospitals(hospital_id,exam_id) values(102,4);

commit;

create table times(
	time_id integer primary key auto_increment,
    time_real varchar(5)
);

insert into times(time_id,time_real) values ('1','10:30');
insert into times(time_id,time_real) values ('2','11:30');
insert into times(time_id,time_real) values ('3','12:30');

    
commit;




create table bookings(
	booking_id integer primary key auto_increment,
    user_id integer,
    exam_id integer,
    hospital_id integer,
    booking_date DATE,
    time_id integer,
    price varchar(10),
    
		constraint bookings_exam_id_fk foreign key (exam_id) references exams(exam_id),
		constraint bookings_hospital_id_fk foreign key(hospital_id) references hospitals(hospital_id),
        constraint bookings_user_id_fk foreign key(user_id) references users(user_id),
        constraint bookings_time_id_fk foreign key(time_id) references times(time_id),
        constraint booking_uq unique(user_id, exam_id,hospital_id,booking_date,time_id),
        constraint exam_uq unique(exam_id,hospital_id,booking_date,time_id),
        constraint patientexam_uq unique(user_id,booking_date,time_id)
);

--  alter table bookings add constraint booking_uq unique(user_id, exam_id,hospital_id,booking_date,time_id);
--  alter table bookings add constraint exam_uq unique(exam_id,hospital_id,booking_date,time_id);
 -- alter table bookings add constraint patientexam_uq unique(user_id,booking_date,time_id);


insert into bookings(booking_id,user_id,exam_id,hospital_id,booking_date,time_id,price) values ('1', '2','4','101','2020-10-10','1','100€');
insert into bookings(booking_id,user_id,exam_id,hospital_id,booking_date,time_id,price) values ('2', '4','2','101','2020-10-11','2','100€');
insert into bookings(booking_id,user_id,exam_id,hospital_id,booking_date,time_id,price) values ('3', '6','3','102','2020-10-12','3','100€');
        
commit;