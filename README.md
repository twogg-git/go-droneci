# go-droneci
[![Build Status](https://cloud.drone.io/api/badges/twogg-git/go-droneci/status.svg)](https://cloud.drone.io/twogg-git/go-droneci)

Simple repo to test DroneCI pipelines 


https://docs.drone.io/


https://docs.drone.io/installation/github/single-machine/

https://github.com/settings/applications/new/

Drone
http://drone.domain.com
http://drone.domain.com/login


https://docs.drone.io/installation/github/single-machine/


DRONE_HOST=localhost docker-compose up -d


docker pull drone/drone:1

docker run \
  --volume=/var/run/docker.sock:/var/run/docker.sock \
  --volume=/var/lib/drone:/data \
  --env=DRONE_GITHUB_SERVER=https://github.com \
  --env=DRONE_GITHUB_CLIENT_ID={% your-github-client-id %} \
  --env=DRONE_GITHUB_CLIENT_SECRET={% your-github-client-secret %} \
  --env=DRONE_RUNNER_CAPACITY=2 \
  --env=DRONE_SERVER_HOST={% your-drone-server-host %} \
  --env=DRONE_SERVER_PROTO={% your-drone-server-protocol %} \
  --env=DRONE_TLS_AUTOCERT=true \
  --publish=80:80 \
  --publish=443:443 \
  --restart=always \
  --detach=true \
  --name=drone \
  drone/drone:1
  
