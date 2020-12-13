# Practica5-IAW
En esta práctica deberá automatizar la instalación y configuración de una aplicación web LAMP en cuatro máquinas virtuales EC2 de Amazon Web Services (AWS), con la última versión de Ubuntu Server. En esta práctica vamos a usar una máquina virtual con Apache HTTP Server como un proxy inverso para hacer de balanceador de carga. El objetivo de esta práctica es crear una arquitectura de alta disponibilidad que sea escalable y redundante, de modo que podamos balancear la carga entre todos los frontales web.

La arquitectura estará formada por:

    Un balanceador de carga, implementado con un Apache HTTP Server configurado como proxy inverso.
    Una capa de front-end, formada por dos servidores web con Apache HTTP Server.
    Una capa de back-end, formada por un servidor MySQL.

Necesitará crear cuatro máquinas virtuales:

    Balanceador.
    Frontal Web 1.
    Frontal Web 2.
    Servidor de Base de Datos MySQL.

## ¿Qué es un balanceador de carga?

Un balanceador de carga es un dispositivo hardware o software que se pone al frente de un conjunto de servidores y se encarga de asignar o balancear las peticiones que llegan de los clientes hacia los servidores.

## ¿Qué es un proxy inverso?

Un proxy inverso es un tipo de servidor proxy que hace de intermediario entre un cliente y uno o más servidores. El cliente realiza las peticiones a los servidores a través del proxy inverso y las respuestas de los servidores hacia el cliente también se envían a través del proxy inverso.
