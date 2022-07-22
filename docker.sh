
#!/bin/bash
# step1 cleanup system
sudo yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine
#step2 setup docker repository

sudo yum install -y yum-utils

sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# step3 install docker ingine

sudo yum install docker-ce docker-ce-cli containerd.io

#step4 check the status ,start,and enable deamon

sudo systemctl status docker

sudo systemctl start docker

sudo systemctl enable docker

# check the status of deamons to make sure isup and running

sudo systemctl status docker
~                                     
