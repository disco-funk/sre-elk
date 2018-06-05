#!/usr/bin/env bash

kubectl create -f templates/elasticsearch-deployment.yml
kubectl create -f templates/elasticsearch-service.yml
kubectl create -f templates/kibana-deployment.yml
kubectl create -f templates/kibana-service.yml
kubectl create -f templates/logstash-daemonset.yml
