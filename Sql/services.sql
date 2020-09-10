use green;
drop table if exists services;

create table services(
         service_id integer primary key auto_increment,
         service_name varchar(100)
                 
);


insert into  services (service_id, service_name) values ('1', 'Cardiologia');
insert into  services (service_id, service_name) values ('2', 'Oculistica');
insert into  services (service_id, service_name) values ('3', 'Dietologia e Nutrizione Clinica');
insert into  services (service_id, service_name) values ('4', 'Urologia');
insert into  services (service_id, service_name) values ('5', 'Radiologia');
insert into  services (service_id, service_name) values ('6', 'Allergologia');
insert into  services (service_id, service_name) values ('7', 'Endocrinologia');
insert into  services (service_id, service_name) values ('8', 'Nefrologia');
insert into  services (service_id, service_name) values ('9', 'Neurologia');
insert into  services (service_id, service_name) values ('10', 'Ortopedia');
insert into  services (service_id, service_name) values ('11', 'Otorinolaringoiatria');
insert into  services (service_id, service_name) values ('12', 'Pneumologia');
insert into  services (service_id, service_name) values ('13', 'Oftalmologia');
insert into  services (service_id, service_name) values ('14', 'Ginecologia');
insert into  services (service_id, service_name) values ('15', 'Diabetologia');

commit;