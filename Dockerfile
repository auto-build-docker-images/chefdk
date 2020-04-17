# https://github.com/sjitech/ubuntu-with-utils/blob/master/Dockerfile
FROM osexp2000/ubuntu-with-utils

USER root

RUN wget -O a.deb https://packages.chef.io/files/stable/chefdk/2.5.13/ubuntu/18.04/chefdk_2.5.13-1_amd64.deb && \
    dpkg -i a.deb && \
    rm a.deb

ENV PATH="$PATH:/opt/chefdk/embedded/bin"

USER devuser
