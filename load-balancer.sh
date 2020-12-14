#!/bin/bash

#Configuramos el script para que muestre los comandos por terminal
set -x

#Declaramos las variables
IP_PRIVADA_FRONT_1=172.31.44.174
IP_PRIVADA_FRONT_2=172.31.41.6
#Actualizamos la lista de paquetes Ubuntu
apt update -y

#Actualizamos los paquetes instalados
apt upgrade -y

#Instalamos el servidor Apache HTTP Server
apt install apache2 -y

#Habilitamos los módulos de Apache para configurarlo como Proxy Inverso
a2enmod proxy
a2enmod proxy_http
a2enmod proxy_ajp
a2enmod rewrite
a2enmod deflate
a2enmod headers
a2enmod proxy_balancer
a2enmod proxy_connect
a2enmod proxy_html
a2enmod lbmethod_byrequests


#Copiamos el archivo de configuración  de Apache
cp 000-default.conf /etc/apache2/sites-available/

#Reemplazamos los valores IP-HTTP-SERVER-1 y IP-HTTP-SERVER-2
sed -i "s/IP-HTTP-SERVER-1/$IP_PRIVADA_FRONT_1/" /etc/apache2/sites-available/000-default.conf
sed -i "s/IP-HTTP-SERVER-2/$IP_PRIVADA_FRONT_2/" /etc/apache2/sites-available/000-default.conf

#Reiniciamos Apache
systemctl restart apache2
