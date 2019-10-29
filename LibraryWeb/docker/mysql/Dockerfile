FROM mysql:5.7.28
COPY ./uni_library_db.sql  /docker-entrypoint-initdb.d/uni_library_db.sql
EXPOSE 3306

ENTRYPOINT ["docker-entrypoint.sh"]

EXPOSE 3306
CMD ["mysqld"]