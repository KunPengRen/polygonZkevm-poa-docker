#!/bin/bash

docker network create --driver overlay --attachable l2
docker network create --driver overlay --attachable l1
