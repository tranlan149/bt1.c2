create database  CongTrinh;
use CongTrinh;
create table host(
	host_id int primary key,
    host_name varchar(45) not null,
    address varchar(45) not null
);
create table contractor(
	contractor_id int primary key,
    contractor_name varchar(255)not null,
    contractor_address varchar(255) not null,
    contractor varchar(45) not null
);
create table building(
	bulding_id int primary key,
    building_name varchar(45) not null,
    building_address varchar(45) not null,
    city varchar(45) not null,
    cost float not null,
	day_start date,
    building_hostid int,
    foreign key(building_hostid) references host(host_id),
    building_contractorid int,
    foreign key(building_contractorid) references contractor(contractor_id)
    );
    create table worker(
		worker_id int primary key,
        worker_name varchar(45),
        worker_birthday varchar(45),
        worker_year varchar(45),
        skill varchar(45)
	);
    create table achitect(
		architech_id int primary key,
        architect_name varchar(255),
        architect_sex tinyint(1),
        architect_birthday date,
        architect_place varchar(255),
        architect_address varchar(255)
);
create table work(
	buildingwork_id int,
    foreign key(buildingwork_id) references building(building_id),
    worker_id int,
    foreign key(worker_id) references worker(worker_id),
    work_date DATE,
    work_total varchar(45)
    );
create table design(
	building_id int,
	foreign key(building_id) references building(building_id),
	architect_id int,
	foreign key architect_id references architect(architect_id),
	design_benefit varchar(45)
	);
        
        
        
    
    
    
    
    
