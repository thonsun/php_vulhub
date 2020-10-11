use mysql;
select host, user from user;
update user set authentication_string=password('root') where user='root';
grant all on day.* to root@'%' identified by 'root' with grant option;
CREATE USER 'fire'@'localhost'  IDENTIFIED BY 'fire'; -- 本地登录
-- CREATE USER 'test'@'%'  IDENTIFIED BY '1234'; -- 远程登录
grant all on day10.* to fire@'localhost' identified by 'fire' with grant option;
flush privileges;