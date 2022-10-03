  #!/bin/bash

  echo Script para instalacao base - Wordpress  
  
  echo ----------------------------------------------
  
  echo Trocando de usuario...
  
  sudo su
  
  echo ----------------------------------------------
  
  echo Atualizando o sistema...
  
  sleep 1s
  
  apt-get update && apt-get upgrade -y
  
  echo ----------------------------------------------
  
  echo Instalando e ativando o Apache...
  
  apt-get install apache2 apache2-utils -y
  
  sudo systemctl enable apache2
  
  sudo systemctl start apache2
  
  sudo systemctl status apache2
  
  echo Apache instalado...

  sleep 10s

  echo ----------------------------------------------

  echo Instalando e configurando o MySql...
  
  apt-get install mysql-client mysql-server
  
  echo MySql instalado...
  
  sleep 2s
  
  echo ----------------------------------------------
  
  echo Instalando e configurando o PHP e suas dependencias...
  
  apt-get install php libapache2-mod-php php-mysql php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip 
  
  echo MySql instalado...
  
  sleep 2s
  
  systemctl restart apache2
  
  echo ----------------------------------------------
  
  echo Criando arquivo info.php...
  
  echo "<?php phpinfo(); ?>" > /var/www/html/info.php
  
  sleep 2s
  
  echo ----------------------------------------------
 
  echo Baixando e extraindo Wordpress...
  
  cd /tmp/
  
  wget -c http://wordpress.org/latest.tar.gz
  
  sleep 5s
  
  tar -xzvf latest.tar.gz
  
  sleep 5s
  
  mv wordpress/* /var/www/html/
  
  chown -R www-data:www-data /var/www/html/
  
  chmod -R 755 /var/www/html/
  
  echo ----------------------------------------------
  
  echo Script finalizado, termine a configuracao...
  
  echo ----------------------------------------------
  
  sleep 2s  
