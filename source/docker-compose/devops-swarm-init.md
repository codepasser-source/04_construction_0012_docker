## 创建overlay网络

> 初始化docker集群管理节点 

```shell script
# 管理节点操作
docker swarm init --advertise-addr 172.16.120.100
```

```shell script
# 工作节点操作
# 查看工作加入token
docker swarm join-token worker
docker swarm join --token SWMTKN-1-2kke4rbao633z9d554cofss6jvvb8klbvbwq18rn8abdt1xvmg-19lovdl5t10abumpdv3kfyb9q 172.16.120.100:2377
# 查看管理节点身份加入token
docker swarm join-token manager
docker swarm join --token SWMTKN-1-2kke4rbao633z9d554cofss6jvvb8klbvbwq18rn8abdt1xvmg-apg5k84m8w81mts8qfat32hm2 172.16.120.100:2377
```

```shell script
# 确认节点
docker node ls
ID                            HOSTNAME                  STATUS    AVAILABILITY   MANAGER STATUS   ENGINE VERSION
lyn7d3h0hxwgr3eyr7062difs *   devops100.codepasser.io   Ready     Active         Leader           20.10.8
qei15atv8h13dfx5al39zklb9     devops101.codepasser.io   Ready     Active                          20.10.8
```

> 创建overlay网络(管理节点操作)

```shell script
# 创建overlay网络 允许动态添加（推荐）
docker network create --driver overlay --attachable codepasser_devops
# 创建overlay网络 允许动态添加+加密网络
docker network create --driver overlay --attachable --opt encrypted codepasser_devops
```

> 确认网络

```shell script
# 管理节点
docker network ls
NETWORK ID     NAME                DRIVER    SCOPE
9681c63cce7a   bridge              bridge    local
j3t8t2s0qsnj   codepasser_devops   overlay   swarm
adca4f09b56b   docker_gwbridge     bridge    local
4a6994fa805e   host                host      local
nr4dr3ayr5et   ingress             overlay   swarm
dc99cdfe3ed3   none                null      local
# 工作节点 暂时看不到codepasser_devops网络,当容器实例应用负载时才可见
NETWORK ID     NAME              DRIVER    SCOPE
b8c0a220e594   bridge            bridge    local
3255702981c2   docker_gwbridge   bridge    local
4a6994fa805e   host              host      local
nr4dr3ayr5et   ingress           overlay   swarm
dc99cdfe3ed3   none              null      local
```
- [注意]

    * 关闭防火墙
    * 手动关闭后需要冲洗docker服务 systemctl restart docker.service 

> 验证网络

- [注] 确认宿主机DNS映射

```shell script
docker pull busybox

# 管理节点启动(172.16.120.100)
docker run -itd \
        --name c1 \
        --network codepasser_devops \
        busybox

# 工作节点启动(172.16.120.101)
docker run -itd \
        --name c2 \
        --network codepasser_devops \
        busybox

# 查看启动结果
docker ps -a

# 进入容器
docker exec c1 ping -c 2 c2
docker exec -it c1 sh

docker exec c2 ping -c 2 c1
docker exec -it c2 sh
```

> 环境清理

```shell script
docker stop c1
docker rm c1
docker node rm <node id>
docker swarm leave -f
docker network rm docker_gwbridge
docker network ls

docker stop c2
docker rm c2
docker swarm leave
docker network rm docker_gwbridge
docker network ls
```
