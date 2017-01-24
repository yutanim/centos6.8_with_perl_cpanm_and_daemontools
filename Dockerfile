From centos:6.8

RUN yum -y install gcc wget  boost-devel gcc-c++ openssl-devel perl perl-ExtUtils-Manifest perl-devel
RUN mkdir ~/bin && cd ~/bin
RUN curl -L https://cpanmin.us | perl - App::cpanminus
RUN cpanm Time::HiRes
COPY ./install_daemontools.sh  /tmp/install_daemontools.sh
COPY ./conf-cc /tmp/conf-cc
RUN chmod -R +x /tmp/
RUN /tmp/install_daemontools.sh
