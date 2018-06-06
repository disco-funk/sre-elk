#!/usr/bin/env bash

kubectl delete deployment sre-elk-kibana
kubectl delete deployment sre-elk-elasticsearch

kubectl delete service sre-elk-kibana
kubectl delete service sre-elk-elasticsearch

kubectl delete ds sre-elk-logstash
