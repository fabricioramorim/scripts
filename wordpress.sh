  #!/bin/bash

  echo Script para instalacao base - Wordpress  
  
  echo ----------------------------------------------
  
  if [[ $EUID -ne 0 ]]; then
   echo "Esse script deve ser rodado como usuario Root..." 
   exit 1
  fi
  
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
  
  apt-get install mysql-client mysql-server -y
  
  echo MySql instalado...
  
  sleep 2s
  
  echo ----------------------------------------------
  
  echo Instalando e configurando o PHP e suas dependencias...
  
  apt-get install php libapache2-mod-php php-mysql php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip php-imagick -y
  
  echo PHP instalado...
  
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
  
  echo Deletando o arquivo padrão index.html...
  
  rm /var/www/html/index.html
  
  echo ----------------------------------------------
  
  echo Script finalizado...
  
  echo Termine a configuracao de acesso ao banco de dados...
    
  echo ----------------------------------------------
  
  sleep 2s  
