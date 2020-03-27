# bitbar/ubupy

# based on Ubuntu 18.04 LTS
FROM ubuntu:bionic

LABEL vendor="Bitbar Inc" \
      description="Ubuntu LTS based Docker image with Python"

ENV TERM=xterm-256color \
    PATH="$PATH:/usr/local/bin"

# set timezone
ENV TZ=Etc/UTC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# installing apt packages
RUN apt-get update
RUN apt-get dist-upgrade -y
RUN apt-get install -qy -o APT::Install-Recommend=false -o APT::Install-Suggests=false \
    apt-transport-https \
    apt-utils \
    ca-certificates \
    tree \
    git \
    curl \
    wget \
    tzdata

# install Python
RUN apt-get update && apt-get dist-upgrade -y
RUN apt-get update && apt-get install -qy -o APT::Install-Recommend=false -o APT::Install-Suggests=false \
    python python-pip python-dev \
    python3 python3-pip python3-dev

# confd
ADD https://github.com/kelseyhightower/confd/releases/download/v0.16.0/confd-0.16.0-linux-amd64 /usr/local/bin/confd
RUN chmod +x /usr/local/bin/confd

# entrypoint
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
CMD ["bash"]

ENV SHELL /bin/bash
