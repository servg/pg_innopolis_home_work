create table users(id bigint PRIMARY KEY, name varchar(255));
create table sensor_work_type(id bigint PRIMARY KEY, name varchar(255));
create table sensor_type(id bigint PRIMARY KEY, id_sensor_work_type bigint, name varchar(255), 
CONSTRAINT fk_sensor_work_type
      FOREIGN KEY(id_sensor_work_type) 
	  REFERENCES sensor_work_type(id));
create table sensor(id bigint PRIMARY KEY,  id_sensor_type bigint, id_user bigint, is_active boolean not null,date_on date not null,
    name varchar(255) not null, table_name varchar(255) not null,
    CONSTRAINT fk_sensor_type      FOREIGN KEY(id_sensor_type) 	  REFERENCES sensor_type(id),
    CONSTRAINT fk_user      FOREIGN KEY(id_user) 	  REFERENCES users(id)

    ) WITH (fillfactor=90) ;

create table sensor_data(id_sensor bigint not null, date_on timestamp ,
 CONSTRAINT fk_sensor     FOREIGN KEY(id_sensor) 	  REFERENCES sensor(id));
create table sensor_data_boolean(res boolean not null) INHERITS(sensor_data);
create table sensor_data_info(res varchar not null) INHERITS(sensor_data);
create table sensor_data_boolean_1() INHERITS(sensor_data_boolean);
create table sensor_data_info_1() INHERITS(sensor_data_info);
