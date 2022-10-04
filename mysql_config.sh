  #!/bin/bash
  
  echo Configurando o MySQL...
  
  mysql -u root -p
  
  CREATE DATABASE wordpress_db;
  
  CREATE USER 'wp_user'@'localhost' IDENTIFIED BY 'Cpdadm90';
  
  GRANT ALL ON wordpress_db.* TO 'wp_user'@'localhost' IDENTIFIED BY 'Cpdadm90';
  
  FLUSH PRIVILEGES;
  
  exit;
