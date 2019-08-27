# DroneCI + Golang + Hub Docker!!!
[![Build Status](https://cloud.drone.io/api/badges/twogg-git/go-droneci/status.svg)](https://cloud.drone.io/twogg-git/go-droneci)

Simple repo to test DroneCI pipelines 

# Cloud Drone 
Add your project into Cloud Drone
https://cloud.drone.io

# Documentation
https://docs.drone.io/

# Plugins
http://plugins.drone.io/    

# Docker Plugin
http://plugins.drone.io/drone-plugins/drone-docker/

https://hub.docker.com/r/twogghub/go-droneci

```sh
- name: publish
  image: plugins/docker
  settings:
    ...
    repo: {your_user}/{your_repo}
    tags:
      - latest
```

# Adding secrets
https://cloud.drone.io/{your_user}/{your_repo}/settings

```sh
- name: publish
  ...
    username:
      from_secret: DOCKER_USERNAME
    password:
      from_secret: DOCKER_PASSWORD
    ...
```

# Email Plugin
http://plugins.drone.io/drillster/drone-email/

```sh 
- name: notify
  image: drillster/drone-email
  settings: 
    host: smtp
    ...
    when:
      status: [ changed, success ]
      
services:
- name: smtp
  image: catatnight/postfix
  environment:
    ports: 25
    ...
```


# Testing locally
``` sh
docker run --rm -p 8282:8080 --name testing twogghub/go-droneci:latest
```
```sh
localhost:8282
```

# Katacoda example
https://www.katacoda.com/courses/cicd/build-docker-images-drone
  
# ToDo

- Configure and run the Drone server in single-machine mode.   
https://docs.drone.io/installation/github/single-machine/

- Configure #notify# step to send an email when sny step fails.   
http://plugins.drone.io/drillster/drone-email/
