#!/usr/bin/env bash

kubectl delete deployment sre-elk-kibana
kubectl delete deployment sre-elk-elasticsearch
#kubectl delete deployment sre-elk-logstash

kubectl delete service sre-elk-kibana
kubectl delete service sre-elk-elasticsearch
