#!/bin/bash

set -eo pipefail

docker-compose -f local/docker-compose.yml up --build --exit-code-from deploy
