# Utiliza la imagen base de MySQL
FROM mysql:latest

# Establece las variables de entorno para MySQL
ENV MYSQL_ROOT_PASSWORD=rootpassword
ENV MYSQL_DATABASE=ecomdb
ENV MYSQL_USER=ecomuser
ENV MYSQL_PASSWORD=ecompassword

# Copia el script SQL al directorio /docker-entrypoint-initdb.d/ en la imagen
COPY db-load-script.sql /docker-entrypoint-initdb.d/

