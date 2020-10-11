#!/usr/bin/env bash
set -e

echo `pwd`
echo "1.启动lamp服务..."
/etc/init.d/ssh start
/etc/init.d/apache2 start
mkdir -p /var/run/mysqld && chown -R mysql:mysql /var/lib/mysql /var/run/mysqld
/etc/init.d/mysql start

echo '2.开始导入数据....'
mysql < /var/www/html/day1.sql


echo '3.开始修改MySQL密码...'
mysql < /var/www/html/privileges.sql

echo 'mysql容器启动完毕,且数据导入成功'
/usr/sbin/apache2ctl -D FOREGROUND


#tail -f /dev/null
/bin/bash