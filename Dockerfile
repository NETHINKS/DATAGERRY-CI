FROM centos:7
LABEL maintainer="monitoring@nethinks.com"

RUN yum -y install git.x86_64 ca-certificates.noarch \
    # install Python 3.6
    && yum -y install https://centos7.iuscommunity.org/ius-release.rpm \
    && yum -y install python36u.x86_64 python36u-pip.noarch python36u-devel.x86_64 \
    && ln -s /usr/bin/pip3.6 /usr/bin/pip \
    # install npm
    && curl -sL https://rpm.nodesource.com/setup_12.x | bash - \
    && yum install -y nodejs \
    # install make
    && yum -y install make.x86_64 \
    # install sshpass
    && yum -y install sshpass.x86_64 \
    # clear cache
    && yum -y clean all
