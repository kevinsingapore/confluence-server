#!/usr/bin/bash
  
docker run -itd \
           --name wiki \
           -p 8090:8090 \
           -p 8091:8091 \
           -v /etc/timezone:/etc/timezone:ro \
           -v /etc/localtime:/etc/localtime:ro \
           -v /mnt/wiki/var/atlassian/application-data/confluence:/var/atlassian/application-data/confluence \
           -e JVM_MINIMUM_MEMORY=4096m \
           -e JVM_MAXIMUM_MEMORY=4096m \
           --restart always \
           atlassian/confluence-server:6.15.7
