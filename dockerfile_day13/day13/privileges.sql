use mysql;
select host, user from user;
update user set authentication_string=password('root') where user='root';
grant all on day1.* to root@'%' identified by 'root' with grant option;
flush privileges;
