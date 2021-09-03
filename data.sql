create table car (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	make VARCHAR(100) NOT NULL,
	model VARCHAR(100) NOT NULL,
	price NUMERIC(19, 2) NOT NULL
);


CREATE TABLE person (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(150),
	gender VARCHAR(6) NOT NULL,
	date_of_birth TIMESTAMP NOT NULL,
	country_of_birth VARCHAR(50) NOT NULL,
    car_id BIGINT REFERENCES  car(id),
    UNIQUE(car_id)
);


insert into person (id,first_name, last_name, email, gender, date_of_birth, country_of_birth) values ('1','Miguel', 'Wetherell', 'mwetherell0@wp.com', 'Male', '1985-07-21', 'Norway');
insert into person (id,first_name, last_name, email, gender, date_of_birth, country_of_birth) values ('2','Elga', 'Balmer', 'ebalmer1@tripod.com', 'Female', '1991-07-20', 'Brazil');
insert into person (id,first_name, last_name, email, gender, date_of_birth, country_of_birth) values ('3','Ettore', 'Pitt', 'epitt2@seattletimes.com', 'Male', '1985-11-20', 'Guatemala');
insert into person (id,first_name, last_name, email, gender, date_of_birth, country_of_birth) values ('4','Lynde', 'Gresswell', 'lgresswell3@deliciousdays.com', 'Female', '1981-11-13', 'Kuwait');
insert into person (id,first_name, last_name, email, gender, date_of_birth, country_of_birth) values ('5','Faunie', 'Volker', null, 'Female', '1992-12-21', 'China');
insert into person (id,first_name, last_name, email, gender, date_of_birth, country_of_birth) values ('6','Clary', 'Armsby', 'carmsby5@edublogs.org', 'Female', '1992-04-09', 'Czech Republic');
insert into person (id,first_name, last_name, email, gender, date_of_birth, country_of_birth) values ('7','Jack', 'Gegay', 'jgegay6@merriam-webster.com', 'Male', '1984-08-27', 'China');

insert into car (id, make, model, price) values ('1', 'Plymouth', 'Horizon', 45195.78);
insert into car (id, make, model, price) values ( '2','Dodge', 'Caravan', 24362.40);
insert into car (id, make, model, price) values ( '3','Suzuki', 'Vitara', 88945.57);
insert into car (id, make, model, price) values ( '4','Ford', 'Ranger', 15626.18);
insert into car (id, make, model, price) values ( '5','Ford', 'Ranger', 94639.10);