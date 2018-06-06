
# SRE ELK
This project packages the logging components for the camp training project.

## What is
This project packages Elastic Search, Log Stash and Kibana as Docker images for Kubernetes deployment managed by Helm Charts for the Site Reliability-Engineering project.

## How to
Quick start: this is how to set up and tear down the logging components.  From the folder above the one containing this read-me, to set up,

    helm install sre-elk

Then, from a browser,

    http://...aws.amazon.com:5601

To tear down, we need to know the release name,
    
    helm list
    
then,

    helm delete <release name>

### Building the images
From the folder containing this read-me,

    scripts/build-images-and-push.sh

The resulting images can also be used directly with Kubernetes.

    scripts/set-up.sh
    scripts/tear-down.sh

The Docker images can be exercised locally.

    scripts/rebuild-containers.sh

In three shells,

    docker run --rm --name es -p 127.0.0.1:9200:9200 es
    docker run --rm --name ls ls
    docker run --rm --name ki -p 127.0.0.1:5601:5601 ki

Some other useful commands

    kubectl logs <podname>
    kubectl exec -it <podname> <command>
    kubectl describe service <servicename>
    while true; do clear; kubectl get deployment,service,ds,pods; sleep 15; done

---
