#!/usr/bin/env bash

(
    docker build -t sre-logstash ./containers/logstash/ \
        && docker tag sre-logstash:latest 870594606895.dkr.ecr.eu-west-2.amazonaws.com/sre-logstash \
        && docker push 870594606895.dkr.ecr.eu-west-2.amazonaws.com/sre-logstash \
        && echo "pushed logstash image"
) &

(
    docker build -t sre-elasticsearch ./containers/elasticsearch/ \
        && docker tag sre-elasticsearch:latest 870594606895.dkr.ecr.eu-west-2.amazonaws.com/sre-elasticsearch \
        && docker push 870594606895.dkr.ecr.eu-west-2.amazonaws.com/sre-elasticsearch \
        && echo "pushed elasticsearch image"
) &

(
    docker build -t sre-kibana ./containers/kibana/ \
        && docker tag sre-kibana:latest 870594606895.dkr.ecr.eu-west-2.amazonaws.com/sre-kibana \
        && docker push 870594606895.dkr.ecr.eu-west-2.amazonaws.com/sre-kibana \
        && echo "pushed kibana image"
) &

wait
