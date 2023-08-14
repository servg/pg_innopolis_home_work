insert into users(id,name) values(1,'sergey.guzin@rt.ru');
insert into sensor_work_type(id,name) values(1,'boolean');
insert into sensor_work_type(id,name) values(2,'info');
insert into sensor_type(id,id_sensor_work_type,name) values(1,1,'Датчик движения');
insert into sensor_type(id,id_sensor_work_type,name) values(2,1,'Датчик протечки воды');
insert into sensor_type(id,id_sensor_work_type,name) values(3,1,'Датчик открытия двери / окна');
insert into sensor_type(id,id_sensor_work_type,name) values(4,1,'Датчик для управления жалюзи шторами');
insert into sensor_type(id,id_sensor_work_type,name) values(5,1,'Датчик дыма');
insert into sensor_type(id,id_sensor_work_type,name) values(6,2,'Датчик цвета');

insert into sensor(id,  id_sensor_type, id_user, is_active, date_on, name, table_name) values(1,1,1,CAST( 1 AS boolean ),'2023-08-14','Датчик движения','sensor_data_boolean_1');
insert into sensor(id,  id_sensor_type, id_user, is_active, date_on, name, table_name) values(2,2,1,CAST( 1 AS boolean ),'2023-08-13','Датчик протечки воды','sensor_data_boolean_1');
insert into sensor(id,  id_sensor_type, id_user, is_active, date_on, name, table_name) values(3,3,1,CAST( 1 AS boolean ),'2023-08-12','Датчик открытия двери / окна','sensor_data_boolean_1');
insert into sensor(id,  id_sensor_type, id_user, is_active, date_on, name, table_name) values(4,4,1,CAST( 1 AS boolean ),'2023-08-11','Датчик для управления жалюзи шторами','sensor_data_boolean_1');
insert into sensor(id,  id_sensor_type, id_user, is_active, date_on, name, table_name) values(5,5,1,CAST( 1 AS boolean ),'2023-08-10','Датчик дыма','sensor_data_boolean_1');
insert into sensor(id,  id_sensor_type, id_user, is_active, date_on, name, table_name) values(6,6,1,CAST( 1 AS boolean ),'2023-08-09','Датчик цвета','sensor_data_info_1');

