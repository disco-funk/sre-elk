#!/usr/bin/env bash

kubectl delete deployment sre-elk-kibana
kubectl delete deployment sre-elk-elasticsearch

kubectl delete service sre-elk-kibana
kubectl delete service sre-elk-elasticsearch

kubectl delete ds sre-elk-logstash

#kubectl delete pods $(kubectl get pods | egrep sre-elk-kibana | cut -d ' ' -f 1)
#kubectl delete pods $(kubectl get pods | egrep sre-elk-elasticsearch | cut -d ' ' -f 1)
#for lsPod in $(kubectl get pods | egrep sre-elk-logstash | cut -d ' ' -f 1)
#do kubectl delete pods ${lsPod}
#done
