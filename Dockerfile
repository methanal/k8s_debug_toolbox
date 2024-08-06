FROM --platform=linux/amd64 python:3.12.4-bookworm

RUN apt-get update --fix-missing && apt-get install -y \
    iputils-ping \
    curl \
    dnsutils \
    tcpdump \
    atop \
    htop \
    vim \
    default-mysql-client \
    redis-tools \
    apt-transport-https \
    gnupg2 \
    software-properties-common \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install pika redis pymysql mysqlclient

RUN curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl" \
    && chmod +x ./kubectl \
    && mv ./kubectl /usr/local/bin/kubectl

WORKDIR /root

CMD ["/bin/bash"]
