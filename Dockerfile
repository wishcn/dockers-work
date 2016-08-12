FROM xxstop/base

MAINTAINER xxstop <xxstop@qq.com>

### php56 sources
RUN apt-get install python-software-properties
RUN apt-get install software-properties-common
RUN add-apt-repository ppa:ondrej/php
RUN apt-get -y update

### wget/curl
RUN apt-get install -y curl wget

### php
RUN apt-get install -y php5.6 --allow-unauthenticated

### composer
ADD https://getcomposer.org/download/1.2.0/composer.phar /usr/local/bin/composer
RUN chmod +x /usr/local/bin/composer

### phpext
RUN apt-get install -y php5.6-mbstring php5.6-dom --allow-unauthenticated

### composer config
RUN composer config -g repo.packagist composer https://packagist.phpcomposer.com
RUN composer config -g repositories.zbjpkg composer "http://ppkg.zbjwork.com/"
RUN composer config -g secure-http false

### Add .sshkey
ADD ~/.ssh/id_rsa ~/.ssh/

EXPOSE 22 
EXPOSE 80

WORKDIR /root/
