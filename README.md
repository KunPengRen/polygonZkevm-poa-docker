未在yml文件中指定每项服务开启的设备，Docker Swarm将会自动分配
不需要每台设备中准备好代码

#### L1节点端口
RPC节点 => IP:8545
WEBSOCKET节点 => IP:8546
enode节点 => 30303

L1 geth1服务为部署好polygon zkevm所需合约的geth节点，准备方式可参考：https://github.com/0xPolygonHermez/zkevm-contracts/tree/v3.0.0-fork.6/docker

#### L2节点端口
RPC节点 => IP:8123
WEBSOCKET节点 => IP:8133
可在yml文件中的zkevm-json-rpc服务中更改

#### start_L1n1_L2n1.sh
开启一个L1节点和一个L2节点

#### start_L1n1_L2n2.sh
开启一个L1节点和两个L2节点

#### start_L1n2_L2n2.sh
开启两个L1节点和两个L2节点