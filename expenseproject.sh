#install mysql-server
dnf install mysql-server -y


#enable mysqld service
systemctl enable mysqld

#start mysqld service
systemctl start mysqld

#status of mysql service
systemctl status mysqld

