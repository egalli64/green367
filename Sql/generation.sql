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
	user_cf char(16) not null,
	cap integer
);

insert into users(user_id,user_name,user_email,user_password,first_name,last_name,user_cf,cap) values('1','francescogreen','francesco@green.it','Greenfrancesco1','Francesco','Fasciano','FRCRTF93Z23B432H','20088');
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
    hospital_cap char(5),
    hospital_city varchar (50)
    );

insert into hospitals(hospital_id,hospital_name,hospital_address,hospital_cap,hospital_city) values('100', 'Ospedale di Vizzolo Pedrabissi', 'Via Pandina 1', 20100, 'Vizzolo Pedrabissi');
insert into hospitals(hospital_id,hospital_name,hospital_address,hospital_cap,hospital_city) values('102', 'Ospedale Bolognini', 'Via Paderno 21', 20101, 'Seriate');
insert into hospitals(hospital_id,hospital_name,hospital_address,hospital_cap,hospital_city) values('103', 'Ospedale Serbelloni', 'Via Bellini 5', 20102, 'Gorgonzola');
insert into hospitals(hospital_id,hospital_name,hospital_address,hospital_cap,hospital_city) values('104', 'Presidio Ospedaliero Territoriale di Vaprio d Adda', 'Via Don Moletta 22', 20103, 'Vaprio d Adda');
insert into hospitals(hospital_id,hospital_name,hospital_address,hospital_cap,hospital_city) values('106', 'Ospedale Pesenti Fenaroli', 'Via Mazzini', 20105, 'Alzano Lombardo');
insert into hospitals(hospital_id,hospital_name,hospital_address,hospital_cap,hospital_city) values('107', 'Presidio Ospedaliero di Rovato', 'Via Macina', 20106, 'Rovato');
insert into hospitals(hospital_id,hospital_name,hospital_address,hospital_cap,hospital_city) values('109', 'Ospedale Uboldo', 'Via Uboldo', 20107, 'Cernusco sul Naviglio');
insert into hospitals(hospital_id,hospital_name,hospital_address,hospital_cap,hospital_city) values('10', 'Ospedale San Paolo', 'Via Antonio di Rudina', 20107, 'Milano');
insert into hospitals(hospital_id,hospital_name,hospital_address,hospital_cap,hospital_city) values('105', 'Ospedale Generale di Saronno', 'Piazza Borella 1', 20107, 'Varese');
insert into hospitals(hospital_id,hospital_name,hospital_address,hospital_cap,hospital_city) values('108', 'Ospedale Santa Maria delle Stelle', 'Melzo', 20108, 'Melzo');




commit;


    

create table exams(
	exam_id integer primary key auto_increment,
    exam_name varchar(50)
    );
    
insert into exams(exam_id,exam_name) values (1,'Cardiologia'); 
insert into exams(exam_id,exam_name) values (2,'Oculistica'); 
insert into exams(exam_id,exam_name) values (3,'Dietologia'); 
insert into exams(exam_id,exam_name) values (4,'Urologia'); 
insert into exams(exam_id,exam_name) values (5,'Radiologia'); 
insert into exams(exam_id,exam_name) values (6,'Allergologia'); 
insert into exams(exam_id,exam_name) values (7,'Endocrinologia'); 
insert into exams(exam_id,exam_name) values (8,'Nefrologia'); 
insert into exams(exam_id,exam_name) values (9,'Neurologia'); 
insert into exams(exam_id,exam_name) values (10,'Ortopedia'); 
insert into exams(exam_id,exam_name) values (11,'Otorinolaringoiatria'); 
insert into exams(exam_id,exam_name) values (12,'Giencologia');
insert into exams(exam_id,exam_name) values (13,'Diabetologia');
insert into exams(exam_id,exam_name) values (14,'Pneumologia'); 
  
commit;

-- spostare primary key 

create table exam_hospitals(
	examhospital_id integer,
    hospital_id integer,
    exam_id integer,
    

	constraint exam_hospital_pk primary key(examhospital_id),
    constraint examhospital_fk foreign key (hospital_id) references hospitals(hospital_id),
	constraint exam_hospital_fk foreign key (exam_id) references exams(exam_id)
 
);

insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(1,100,1);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(2,10,1);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(3,102,1);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(4,103,1);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(5,104,1);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(6,105,1);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(7,106,1);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(8,107,1);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(9,108,1);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(10,100,2);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(11,10,2);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(12,102,2);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(13,103,2);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(14,104,2);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(15,105,2);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(16,106,2);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(17,107,2);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(18,108,2);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(19,100,3);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(20,10,3);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(21,102,3);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(22,103,3);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(23,104,3);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(24,105,3);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(25,106,3);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(26,107,3);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(27,108,3);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(28,100,4);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(29,10,4);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(30,102,4);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(31,103,4);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(32,104,4);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(33,105,4);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(34,106,4);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(35,107,4);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(36,108,4);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(37,100,5);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(38,10,5);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(39,102,5);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(40,103,5);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(41,104,5);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(42,105,5);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(43,107,5);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(44,108,5);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(45,100,6);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(46,10,7);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(47,102,7);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(48,103,7);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(49,104,7);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(50,105,7);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(51,107,7);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(52,108,7);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(53,100,8);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(54,10,8);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(55,102,8);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(56,103,8);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(57,104,8);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(58,105,8);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(59,107,8);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(60,108,8);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(61,100,9);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(62,10,9);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(63,102,9);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(64,103,9);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(65,104,9);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(66,105,9);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(67,107,9);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(68,108,9);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(69,100,10);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(70,10,10);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(71,102,10);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(72,103,10);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(73,104,10);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(74,105,10);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(75,107,10);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(76,108,10);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(77,100,11);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(78,10,11);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(79,102,11);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(80,103,11);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(81,104,11);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(82,105,11);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(83,107,11);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(84,108,11);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(85,100,12);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(86,10,12);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(87,102,12);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(88,103,12);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(89,104,12);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(90,105,12);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(91,107,12);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(92,108,12);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(93,100,13);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(94,10,13);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(95,102,13);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(96,103,13);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(97,104,13);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(98,105,13);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(99,107,13);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(100,108,13);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(101,100,14);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(102,10,14);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(103,102,14);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(104,103,14);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(105,104,14);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(106,105,14);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(107,107,14);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(108,108,14);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(109,10,6);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(110,102,6);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(111,103,6);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(112,104,6);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(113,105,6);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(114,106,6);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(115,107,6);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(116,108,6);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(117,109,1);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(118,109,2);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(119,109,3);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(120,109,4);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(121,109,5);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(122,109,6);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(123,109,7);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(124,109,8);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(125,109,9);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(126,109,10);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(127,109,11);
insert into exam_hospitals(examhospital_id,hospital_id,exam_id) values(128,109,12);

commit;

create table times(
	time_id integer primary key auto_increment,
    time_real varchar(5)
);

insert into times(time_id,time_real) values ('1','10:30');
insert into times(time_id,time_real) values ('2','11:30');
insert into times(time_id,time_real) values ('3','12:30');
insert into times(time_id,time_real) values ('4','13:30');
insert into times(time_id,time_real) values ('5','14:30');
insert into times(time_id,time_real) values ('6','15:30');
insert into times(time_id,time_real) values ('7','16:30');
insert into times(time_id,time_real) values ('8','17:30');
    
commit;




create table bookings(
	booking_id integer primary key auto_increment,
    user_id integer,
	examhospital_id integer,
    booking_date DATE,
    time_id integer,
    price varchar(10),
		
        constraint booking_coupled_id_fk foreign key (examhospital_id) references exam_hospitals(examhospital_id),
        constraint bookings_user_id_fk foreign key(user_id) references users(user_id),
        constraint bookings_time_id_fk foreign key(time_id) references times(time_id),
        constraint booking_uq unique(user_id, examhospital_id,booking_date,time_id),
        constraint exam_uq unique(examhospital_id,booking_date,time_id),
        constraint patientexam_uq unique(user_id,booking_date,time_id)
);

insert into bookings(booking_id,user_id,examhospital_id,booking_date,time_id,price) values ('1', '2',1,'2020-10-10','1','100€');
insert into bookings(booking_id,user_id,examhospital_id,booking_date,time_id,price) values ('2', '4',2,'2020-10-11','2','100€');
insert into bookings(booking_id,user_id,examhospital_id,booking_date,time_id,price) values ('3', '6',3,'2020-10-12','3','100€');
        
commit;