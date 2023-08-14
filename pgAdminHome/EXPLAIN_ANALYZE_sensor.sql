EXPLAIN ANALYZE
select * from (SELECT id_sensor, date_on, res
	FROM public.sensor_data_info union all
SELECT id_sensor, date_on, res::text
	FROM public.sensor_data_boolean) as s where s.id_sensor =1 and date_on between '2023-08-15 00:00:00' and '2023-08-15 00:30:00'
order by s.date_on;