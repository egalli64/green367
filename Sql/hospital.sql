use green;
drop table if exists hospital;

create table hospital(
         hospital_id integer primary key auto_increment,
         hospital_name varchar(100),
         hospital_address varchar(100),
         hospital_city varchar(50),
         hospital_telephone integer
         
);


insert into  hospital (hospital_id, hospital_name, hospital_address,hospital_city,hospital_telephone) values ('1','Ospedale di Vizzolo Predabissi','Via Pandina 1','Vizzolo Predabissi','0298051');
insert into  hospital (hospital_id, hospital_name, hospital_address,hospital_city,hospital_telephone) values ('2','Ospedale Bolognini','Via Paderno 21','Seriate','0353063111');
insert into  hospital (hospital_id, hospital_name, hospital_address,hospital_city,hospital_telephone) values ('3','Ospedale Serbelloni','Via Bellini 5','Gorgonzola','0353063221');
insert into  hospital (hospital_id, hospital_name, hospital_address,hospital_city,hospital_telephone) values ('4','Presidio Ospedaliero Territoriale di Vaprio D Adda Crotta Oltrocchia','Via Don Moletta 22','Vaprio D Adda','0298051');
insert into  hospital (hospital_id, hospital_name, hospital_address,hospital_city,hospital_telephone) values ('5','Ospedale Generale Provinciale - Saronno','Piazza Borella 1','Varese','0298051');
insert into  hospital (hospital_id, hospital_name, hospital_address,hospital_city,hospital_telephone) values ('6','Ospedale Pesenti Fenaroli','Via Mazzini 88','Alzano Lombardo','0298051');
insert into  hospital (hospital_id, hospital_name, hospital_address,hospital_city,hospital_telephone) values ('7','Presidio Ospedaliero di Rovato - E. Spalenza','Via Macina  16','Rovato','0298051');
insert into  hospital (hospital_id, hospital_name, hospital_address,hospital_city,hospital_telephone) values ('8','Ospedale Uboldo ','Via Uboldo  21','Cernusco sul Naviglio','0298051');
insert into  hospital (hospital_id, hospital_name, hospital_address,hospital_city,hospital_telephone) values ('9','Ospedale San Paolo ','Via Antonio di Rudina ','Milano','0298051');

commit;