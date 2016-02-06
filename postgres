sudo -u postgres psql postgres
psql -d mydb -U myuser
CREATE USER your_user WITH PASSWORD 'put_some_pass_here';
CREATE DATABASE your_database;
GRANT ALL PRIVILEGES ON DATABASE your_database to your_user;
\q
\list
\dt
\dn : list shemas
\df list function triggers
\ef show source code of trigger function
DROP DATABASE "YourDatabase";
DROP TABLE "barcode";
DROP USER rick;
TRUNCATE TABLE tablename


SELECT event_object_table,trigger_name,event_manipulation,action_statement,action_timing FROM information_schema.triggers ORDER BY event_object_table,event_manipulation


select 'drop table "' || tablename || '" cascade;' 
from pg_tables where schemaname = 'public';

SELECT 'ALTER TABLE '|| schemaname || '.' || tablename ||' OWNER TO test_user;'
FROM pg_tables WHERE NOT schemaname IN ('pg_catalog', 'information_schema')
ORDER BY schemaname, tablename;

/* doping all tables cascade */
select 'drop table "' || tablename || '" cascade;' from pg_tables;


sudo /etc/init.d/postgresql reload
sudo /etc/init.d/postgresql start
/etc/postgresql/9.1/main/postgresql.conf

pg_dump -U bt_user -c -F c -f backup/db_backup_`date +"%Y-%m-%d"`.dat put_db_name_here
pg_dump -U bt_user -a --inserts --column-inserts -F p -f backup/db_backup_`date +"%Y-%m-%d"`.insert.sql put_db_name_here
pg_dump -U bt_user -F t put_db_name_here > db_backup_`date +"%Y-%m-%d"`.tar

SELECT pg_size_pretty(pg_database_size('Database Name')); // database size

CREATE SCHEMA jobmon;
CREATE EXTENSION dblink;
CREATE EXTENSION pg_jobmon SCHEMA jobmon;
INSERT INTO jobmon.dblink_mapping_jobmon (username, pwd) VALUES ('test_user', 'test_pass');
CREATE SCHEMA partman;
CREATE EXTENSION pg_partman SCHEMA partman;

SELECT partman.create_parent('public.samples', 'time_received', 'time', 'monthly', p_start_partition:= '2014-11-01');
