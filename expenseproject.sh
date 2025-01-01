#install mysql-server
dnf install mysql-server -y


#enable mysqld service
systemctl enable mysqld -y

#start mysqld service
systemctl start mysqld -y

