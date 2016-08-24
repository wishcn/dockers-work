FROM xxstop/base

MAINTAINER xxstop <xxstop@qq.com>

### php53 sources
RUN apt-get -y install python-software-properties
RUN apt-get -y install software-properties-common
RUN add-apt-repository ppa:ondrej/php5-oldstable
RUN apt-get -y update

### wget/curl
RUN apt-get -y install curl wget

### vim
RUN apt-get -y install vim

### git
RUN apt-get -y install git-core

### php
RUN apt-get -y install php5 --allow-unauthenticated

### composer
ADD https://getcomposer.org/download/1.2.0/composer.phar /usr/local/bin/composer
RUN chmod +x /usr/local/bin/composer

### phpext
RUN apt-get -y install php5-mbstring php5-dom php5-mcrypt php5-gd php5-bcmath php5-mysql php5-imagick --allow-unauthenticated 

### composer config
RUN composer config -g repo.packagist composer https://packagist.phpcomposer.com
RUN composer config -g repositories.zbjpkg composer "http://ppkg.zbjwork.com/"
RUN composer config -g secure-http false

### Add .sshkey
ADD id_rsa ~/.ssh/id_rsa
# RUN chmod 600 ~/.ssh/id_rsa

EXPOSE 80

WORKDIR /root/
