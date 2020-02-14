FROM tetraweb/php:7.1

RUN /bin/bash -c 'curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -'
RUN /bin/bash -c 'apt-get -yq update && apt-get -yq install software-properties-common'
RUN /bin/bash -c 'apt-get -yq update && apt-get install -y zip locales locales-all'
RUN /bin/bash -c 'apt-get -yq update && apt-get install -y libssl-dev openssl wget'
RUN /bin/bash -c 'wget https://www.python.org/ftp/python/3.5.0/Python-3.5.0.tgz'
RUN /bin/bash -c 'tar xzvf Python-3.5.0.tgz'
RUN /bin/bash -c './Python-3.5.0/configure'
RUN /bin/bash -c 'make'
RUN /bin/bash -c 'make install'
RUN /bin/bash -c 'pip3 install pip setuptools --upgrade --ignore-installed'
RUN /bin/bash -c 'export LANGUAGE=en_US.UTF-8 && export LANG=en_US.UTF-8 && export LC_ALL=en_US.UTF-8 && pip3 install awsebcli --upgrade --ignore-installed'

