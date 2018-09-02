# staticws4RWS - RWS demo
HelloWorld app in Docker voor demo-doeleinden tbv RWS. 
In deze demo willen we het volgende laten zien een container bouwen en container draaien op verschillende platformen:
1. Bouw container
2. Docker for Windows with Docker commands
3. Docker for Windows with Docker-compose command
4. Docker for Windows with k8s command
5. PKS platform

Voor deze demo heb je het volgende nodig:
1. Windows 10 PC met Docker for Windows
2. Kubectl lokaal + configuratie PKS
3. PC op het RWS netwerk (+ host entry)


## Bouw container
Met onderstaande bouwen we een image bestaande uit nginx webserver en statische html pagina
``` docker
docker image build -t staticws4rws:latest .
```

## Docker for Windows met Docker commands
We kunnen een container starten met
``` docker
docker container run --name staticws4rws -d -p 4200:80 staticws4rws:latest
```

## Docker for Windows with Docker-compose command
```
cd <code>
docker-compose up -d
```

## Docker for Windows met K8S cluster
Met onderstaande commands kunnen we de container starten met een k8s yaml.
```
kubectl config use docker-for-desktop
kubectl apply -f staticws4rwsD4W.yaml
```

## K8S cluster op PCF/PKS platform
Met onderstaande commands kunnen we de container starten met een k8s yaml.
```
kubectl config use <PKS cluster>
kubectl apply -f staticws4rwsPKS.yaml
```

