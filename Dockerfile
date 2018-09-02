# Showcase Static Website for RWS
# with tag latest

FROM nginx:stable-alpine
COPY index.html *.png /usr/share/nginx/html/

LABEL MAINTAINER="Johannes Sim" \
      REFRESHED_AT="2018-09-02"


# build:  docker image build -t staticws4rws:latest .

# Docker build
#build:   docker image build -t staticws4rws:latest .

# Docker
#run  :   docker container run --name staticws4rws -d -p 4200:80 staticws4rws:latest

# Docker-compose
# compose: docker-compose up -d

# K8s
# run:    kubctl apply -f staticws4rws.yaml

# Dockerhub
# tag:    docker tag staticws4rws:latest sim007/staticws4rws:latest
# push:   docker push sim007/staticws4rws:latest
# pull:   docker pull sim007/staticws4rws:latest

# Harbor:
# build:  docker image build -t harbor.test-cf-infra.rws.local/demo/staticws4rws:latest .
# login:  docker login harbor.test-cf-infra.rws.local
# push:   docker push harbor.test-cf-infra.rws.local/demo/staticws4rws:latest
# pull:   docker pull harbor.test-cf-infra.rws.local/demo/staticws4rws:latest

# PKS:
# kubectl apply -f staticws4rwsPKSmetNode.yaml

# Docker maintenance
# delete: docker container rm -f staticws4rws
# in:     docker container exec -it staticws4rws /bin/sh
