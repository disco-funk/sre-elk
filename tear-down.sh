#!/usr/bin/env bash

kubectl delete deployment sre-kibana
kubectl delete deployment sre-elasticsearch
# kubectl delete deployment sre-logstash

kubectl delete service sre-kibana
kubectl delete service sre-elasticsearch
kubectl delete service sre-logstash

kubectl delete ds sre-logstash

kubectl delete pods $(kubectl get pods | egrep sre-kibana | cut -d ' ' -f 1)
kubectl delete pods $(kubectl get pods | egrep sre-elasticsearch | cut -d ' ' -f 1)
for lsPod in $(kubectl get pods | egrep sre-logstash | cut -d ' ' -f 1)
do kubectl delete pods ${lsPod}
done
