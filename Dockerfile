FROM xxstop/base

MAINTAINER xxstop <xxstop@qq.com>

### wget/curl
RUN apt-get install -y curl wget

### php
RUN apt-get install -y php

### composer
ADD https://getcomposer.org/download/1.2.0/composer.phar /usr/local/bin/composer
RUN chmod +x /usr/local/bin/composer
RUN composer config -g repo.packagist composer https://packagist.phpcomposer.com

### phpext
RUN apt-get install -y php7.0-mbstring
RUN apt-get install -y php7.0-dom

### composer config
RUN composer config -g repositories.zbjpkg composer "http://ppkg.zbjwork.com/"
RUN composer config -g secure-http false

EXPOSE 22 
EXPOSE 80

WORKDIR /root/
