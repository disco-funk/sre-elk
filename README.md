
# SRE ELK
This is ...

## How to
This ...

### Docker
This is ...

    cd .../sre-elk
    rebuild-containers

In three shells,

    docker run --rm --name es -p 127.0.0.1:9200:9200 es
    docker run --rm --name ls ls
    docker run --rm --name ki -p 127.0.0.1:5601:5601 ki

From a browser

    http://localhost:5601

### Kubernetes
This is ...

    kubectl get ds
    kubectl get pods
    kubectl get service
    kubectl get deployment

Deploying

    kubectl create -f templates/elasticsearch-deployment.yml
    kubectl create -f templates/elasticsearch-service.yml
    kubectl create -f templates/kibana-deployment.yml
    kubectl create -f templates/kibana-service.yml
    kubectl create -f templates/logstash.yml

Useful

    kubectl logs <podname>
    kubectl exec -it <podname> <command>
    kubectl describe service <servicename>

Er ...

    kubectl delete deployment kibana
    kubectl delete service kibana

---
