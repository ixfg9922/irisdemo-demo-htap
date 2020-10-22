#!/bin/bash

source ../common/utils.sh

kubectl delete -f ./deployment-iris.yml
exit_if_error "Could not delete deployment-iris.yml"

kubectl delete -f ../common/deployment-ui.yml
exit_if_error "Could not delete deployment-ui.yml"

kubectl delete -f ../common/deployment-master.yml
exit_if_error "Could not delete deployment-master.yml"

kubectl delete -f ../common/deployment-workers.yml
exit_if_error "Could not delete deployment-workers.yml"

kubectl delete -f ./service-ui.yml
exit_if_error "Could not delete deployment-iris.yml"
