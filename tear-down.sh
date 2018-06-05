#!/usr/bin/env bash

#kubectl delete deployment kibana
#kubectl delete deployment elasticsearch
#kubectl delete deployment logstash-elasticsearch
#
#kubectl delete service kibana
#kubectl delete service elasticsearch
#kubectl delete service logstash-elasticsearch

kibanaPod=$(kubectl get pods | egrep kibana | cut -d ' ' -f 1)
kubectl delete pods ${kibanaPod}
elasticsearchPod=$(kubectl get pods | egrep ^elasticsearch | cut -d ' ' -f 1)
kubectl delete pods ${elasticsearchPod}
