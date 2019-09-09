FROM ubuntu:18.04

# build base environment
RUN apt-get update && apt-get install -y unzip libssl-dev libmcrypt-dev libpng-dev curl wget python3 python3-pip && \
    pip3 install awscli --upgrade --user

# nodejs
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash && \
    . /root/.bashrc && \
    nvm --version && \
    nvm install v10.16.3
