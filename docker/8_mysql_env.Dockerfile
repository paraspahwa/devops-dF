FROM mysql
# All scripts in docker-entrypoint-initdb.d/ are automatically
# executed during container startup
COPY ./mysql/script/ /docker-entrypoint-initdb.d/


# docker build --tag mysql --file 8_mysql_env.Dockerfile .
# docker run -p 3306:3306 --env-file=mysql/environment/.env mysql
# docker run -it --rm mysql mysql -h172.17.0.2 -uroot -proot