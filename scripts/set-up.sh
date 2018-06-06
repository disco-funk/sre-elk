#!/usr/bin/env bash

work=$(dirname $0)

kubectl create -f ${work}/../templates/elasticsearch-deployment.yml
kubectl create -f ${work}/../templates/kibana-deployment.yml
#kubectl create -f ${work}/../templates/logstash-deployment.yml

kubectl create -f ${work}/../templates/elasticsearch-service.yml
kubectl create -f ${work}/../templates/kibana-service.yml
