  #!/bin/bash
  
  echo Configurando o MySQL...
  
  mysql -u root -p
  
  CREATE DATABASE wordpress_db;
  
  CREATE USER 'wp_oggi'@'localhost' IDENTIFIED BY '@h95eVqoVts6yOqy';
  
  GRANT ALL ON wordpress_db.* TO 'wp_oggi'@'localhost' IDENTIFIED BY '@h95eVqoVts6yOqy';
  
  GRANT ALL PRIVILEGES ON wordpress_db.* TO wp_oggi@localhost;
  
  FLUSH PRIVILEGES;
  
  exit;


  ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password by 'mynewpassword';
