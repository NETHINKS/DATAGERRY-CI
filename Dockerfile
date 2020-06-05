FROM centos:7
LABEL maintainer="monitoring@nethinks.com"

RUN yum -y install git.x86_64 ca-certificates.noarch \
    # install Python 3.6
    && yum -y install https://repo.ius.io/ius-release-el7.rpm \
    && yum -y install python36u.x86_64 python36u-pip.noarch python36u-devel.x86_64 \
    && ln -s /usr/bin/pip3.6 /usr/bin/pip \
    # install npm
    && curl -sL https://rpm.nodesource.com/setup_12.x | bash - \
    && yum install -y nodejs gcc.x86_64 gcc-c++.x86_64 \
    # install make
    && yum -y install make.x86_64 \
    # install sshpass
    && yum -y install sshpass.x86_64 \
    # install packaging tools
    && yum -y install rpm-build debbuild \
    # install Docker client for building docker images
    && curl -L -o /tmp/docker.tgz https://download.docker.com/linux/static/stable/x86_64/docker-19.03.3.tgz \
    && tar -xz -C /tmp -f /tmp/docker.tgz \
    && mv /tmp/docker/* /usr/bin \
    # clear cache
    && yum -y clean all
