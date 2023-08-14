# Для развертывания тестового окружения очистите папку dbdata(если уже запускали)
откройте консоль и выполните
docker-compose -f docker-compose.yml up
Поднимется бд db_course  пользователь user_course пароль pgpwd
по адресу localhost:5050 будет pgadmin пароль pgpwd.

После старта всех компонентов откройте еще один терминал
и выполните run_test.cmd
либо последовательно в ручную в новом терминале

docker exec postgres_container /bin/sh -c "/usr/bin/psql -U user_course -d db_course -a -f /test/plan.sql "
docker exec postgres_container /bin/sh -c "/usr/bin/pgbench -U user_course -f /test/test.sql -c 1 -T 20 db_course"
docker exec postgres_container /bin/sh -c "/usr/bin/psql -U user_course -d db_course -a -f /test/add_index.sql "
docker exec postgres_container /bin/sh -c "/usr/bin/psql -U user_course -d db_course -a -f /test/plan.sql "
docker exec postgres_container /bin/sh -c "/usr/bin/pgbench -U user_course -f /test/test.sql -c 1 -T 20 db_course"