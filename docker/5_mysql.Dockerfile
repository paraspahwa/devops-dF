FROM mysql
ENV MYSQL_ROOT_PASSWORD=root


# docker build --tag mysql --file 5_mysql.Dockerfile .
# docker run -dp 3306:3306 mysql 
# docker run -it --rm mysql mysql -h172.17.0.2 -uroot -proot