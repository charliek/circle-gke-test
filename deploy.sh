#!/bin/bash -eux

sudo /opt/google-cloud-sdk/bin/gcloud docker push gcr.io/${PROJECT_NAME}/${APP_NAME}
#sudo chown -R ubuntu:ubuntu /home/ubuntu/.kube
#kubectl patch deployment docker-hello-google -p '{"spec":{"template":{"spec":{"containers":[{"name":"docker-hello-google","image":"us.gcr.io/circle-ctl-test/hello:'"$CIRCLE_SHA1"'"}]}}}}'