#!/usr/bin/env bash

docker image rm es ls ki
docker image build containers/elasticsearch --tag es
docker image build containers/logstash --tag ls
docker image build containers/kibana --tag ki
docker image ls -a
docker container ls -a

