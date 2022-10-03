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
  
  echo Instalando Apache...
  
  apt-get install apache2 -y
  
  echo ----------------------------------------------
