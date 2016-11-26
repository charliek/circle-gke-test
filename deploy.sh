#!/bin/bash -eux

sudo /opt/google-cloud-sdk/bin/gcloud docker -- push gcr.io/${PROJECT_NAME}/${APP_NAME}

sudo chown -R ubuntu:ubuntu /home/ubuntu/.kube
export GOOGLE_APPLICATION_CREDENTIALS=/home/ubuntu/account-auth.json
kubectl set image deployment/circle-gke-test circle-gke-test=gcr.io/charliek-apps/${APP_NAME}:$CIRCLE_SHA1
