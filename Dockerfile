FROM xxstop/base

MAINTAINER xxstop <xxstop@qq.com>

### wget/curl
RUN apt-get -y install curl wget

### vim
RUN apt-get -y install vim

### git
RUN apt-get -y install git-core

### php
RUN apt-get -y install php

### composer
ADD https://getcomposer.org/download/1.2.0/composer.phar /usr/local/bin/composer
RUN chmod +x /usr/local/bin/composer

### phpext
RUN apt-get -y install php-mbstring php-dom php-mcrypt php-gd php-bcmath php-mysql php-imagick

### composer config
RUN composer config -g repo.packagist composer https://packagist.phpcomposer.com
RUN composer config -g repositories.zbjpkg composer "http://ppkg.zbjwork.com/"
RUN composer config -g secure-http false

### Add .sshkey
ADD id_rsa ~/.ssh/id_rsa
# RUN chmod 600 ~/.ssh/id_rsa

EXPOSE 80

WORKDIR /root/
