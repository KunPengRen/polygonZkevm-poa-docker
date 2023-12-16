#!/bin/bash

# 判断是否启用Docker Swarm，创建所需网络
if docker info | grep -q "Swarm: active"; then
  # 检查网络是否不存在
  if ! docker network ls --filter name=l1 -q | grep -q .; then
    docker network create --driver overlay --attachable l1
  fi
  if ! docker network ls --filter name=l2 -q | grep -q .; then
    # 创建网络
    docker network create --driver overlay --attachable l2
  fi
else
  echo "Error: Docker is not in Swarm mode."
  exit 1
fi

# 开启单个L1节点
docker stack deploy -c l1_node1.yml l1

sleep(3)

# 开启单个L2节点
docker stack deploy -c l2n1.yml l2n1

sleep(3)