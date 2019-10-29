# creer l'image creant la base uni_library_db
docker build -t library-mysql:5.7.28 .

#Demarrer le conteneur mysql
docker run -d --rm --name mysql-server -e MYSQL_ROOT_PASSWORD=mysql  library-mysql:5.7.28