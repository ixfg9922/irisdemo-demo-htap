#!/bin/bash

source ../common/utils.sh

#eksctl create cluster -f ./nodes-r5-2xlarge.yaml
#exit_if_error "Could note create cluster using nodes-r5-2xlarge.yaml"

kubectl apply -f ./storage-class-iris-r5-2xlarge.yaml
exit_if_error "Could not apply storage-class-iris-r5-2xlarge.yaml"

kubectl apply -f ./deployment-iris.yml
exit_if_error "Could not apply deployment-iris.yml"

kubectl apply -f ../common/deployment-ui.yml
exit_if_error "Could not apply deployment-ui.yml"

kubectl apply -f ../common/deployment-master.yml
exit_if_error "Could not apply deployment-master.yml"

kubectl apply -f ../common/deployment-workers.yml
exit_if_error "Could not apply deployment-workers.yml"

kubectl apply -f ./service-ui.yml
exit_if_error "Could not apply deployment-iris.yml"

printf "\n\nWait for a minute or so then open http://localhost\n\n"

printf "\n\nWhen you are done, run the ./delete.sh script.\n\n"