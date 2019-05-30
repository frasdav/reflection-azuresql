#!/bin/bash

readonly WORKING_DIR=`pwd`

set -eo pipefail

if [[ ! -z "${TENANT_ID}" ]]; then
  az login --tenant ${TENANT_ID}
else
  az login
fi

terraform init $WORKING_DIR/terraform
terraform apply -var-file=$WORKING_DIR/terraform/config/demo.tfvars -input=false -auto-approve=true -refresh=true $WORKING_DIR/terraform
