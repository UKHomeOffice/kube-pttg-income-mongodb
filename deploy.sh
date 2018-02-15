#!/bin/bash
export KUBE_NAMESPACE=${KUBE_NAMESPACE}
export KUBE_SERVER=${KUBE_SERVER}
export KUBE_TOKEN=${KUBE_TOKEN}

if [ $ENVIRONMENT == "prod" ]
then
    export KUBE_TOKEN=${PROD_KUBE_TOKEN}
fi

cd kd
kd --insecure-skip-tls-verify \
   -f deployment.yaml \
   -f service.yaml
