# Usa una imagen de Ubuntu como base
FROM ubuntu

# Configurar variables de entorno para evitar solicitudes de interacción
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=UTC

# Actualiza e instala Apache, PHP y los módulos necesarios
RUN apt-get update && \
    apt-get install -y --no-install-recommends apache2 php php-mysql git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Elimina los contenidos existentes en /var/www/html
RUN rm -rf /var/www/html/*

# Clona el código de la aplicación al directorio web de Apache
# RUN git clone --config http.sslVerify=false https://github.com/kodekloudhub/learning-app-ecommerce.git /var/www/html/

# Copia el codigo del origen
COPY . /var/www/html
# Configura el servidor web
RUN sed -i 's/index.html/index.php/g' /etc/apache2/apache2.conf

# Exponer el puerto 80 para acceder a la aplicación web
EXPOSE 80

# Iniciar Apache al iniciar el contenedor
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

