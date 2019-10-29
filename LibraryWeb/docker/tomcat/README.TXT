# Construire l'image
docker build -t library-tomcat:8.5.47 .

#Lancer le conteneur
docker run -d --rm -p 8090:8080 --name tomcat-server1 library-tomcat:8.5.47

#arreter le conteneur
docker stop tomcat-server1


# le lien entre mysql et tomcat avec l'option --link
docker run -d --rm -p 8080:8080 --name  tomcat-server1 --link mysql-server:mysql  library-tomcat:8.5.47