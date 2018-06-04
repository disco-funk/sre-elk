
# SRE ELK
This is ...

### Building Docker containers:

    docker image rm es ls ki
    docker image build containers/elasticsearch --tag es
    docker image build containers/logstash --tag ls
    docker image build containers/kibana --tag ki

###

    docker run --rm --name es -p 127.0.0.1:9200:9200 es
    docker run --rm --name ls ls
    docker run --rm --name ki -p 127.0.0.1:5601:5601 ki


###

    docker network create -d bridge elk-net

    docker run --net=host -p 127.0.0.1: --rm --name es es:0.0.1
   
###
   
    apt-get update; apt-get upgrade; apt-get install telnet

---
