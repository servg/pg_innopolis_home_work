create index sensor_data_boolean_ind on sensor_data_boolean(id_sensor,date_on) include(res);
create index sensor_data_info_ind on sensor_data_info(id_sensor,date_on) include(res);
create index sensor_data_boolean_1_ind on sensor_data_boolean_1(id_sensor,date_on) include(res);
create index sensor_data_info_1_ind on sensor_data_info_1(id_sensor,date_on) include(res);