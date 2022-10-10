  #!/bin/bash

  sudo apt-get install software-properties-common

  sudo apt-get install gpg -y

  sudo apt-add-repository ppa:certbot/certbot -y

  sudo apt-get update -y

  sudo apt-get install certbot -y

  DOMAIN=roneysoft.com.br

  WILDCARD=*.$DOMAIN

  echo $DOMAIN && echo $WILDCARD

  sudo certbot -d $DOMAIN -d $WILDCARD --manual --preferred-challenges dns certonly
