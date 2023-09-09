FROM mysql
ENV MYSQL_ROOT_PASSWORD_FILE=sceret/mysql-root-password
ENV MYSQL_DATABASE company
# All scripts in docker-entrypoint-initdb.d/ are automatically
# executed during container startup
COPY ./mysql/script/ /docker-entrypoint-initdb.d/
COPY ./mysql/sceret/ /sceret/

# docker build --tag mysql --file 7_mysql_sceret.Dockerfile .
# docker run -dp 3306:3306 mysql
# docker run -it --rm mysql mysql -h172.17.0.2 -uroot -proot