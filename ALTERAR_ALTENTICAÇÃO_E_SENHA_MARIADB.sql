ALTER USER 'user'@'localhost' IDENTIFIED VIA mysql_native_password USING PASSWORD('new_password');
FLUSH PRIVILEGES;
