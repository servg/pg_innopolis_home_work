 insert into sensor_data_boolean_1(id_sensor,date_on,res)
 SELECT  floor(random()* (5 ) + 1),
 (TO_TIMESTAMP('2023-08-15','yyyy-mm-dd')::timestamp + interval '10 second' * id)::timestamp, CAST( round(random() )::int   AS boolean )
 FROM generate_series(1,8500) AS x(id);
  insert into sensor_data_info_1(id_sensor,date_on,res)
 SELECT 6 ,
 (TO_TIMESTAMP('2023-08-15','yyyy-mm-dd')::timestamp + interval '10 second' * id)::timestamp, ' {“color”: “'||(case(floor(random()* (3 ) + 1)) when 1 THEN 'red' when 2 THEN 'green' else 'blue' end)||'”, “intensity”: '||(floor(random()* (100 ) + 1)::text)||'}'
 FROM generate_series(1,1500) AS x(id);