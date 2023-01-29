# PLATFORM

## 配置Swarm Overlay 网络

> 初始化Swarm Overlay集群管理节点

```shell
docker swarm init --advertise-addr 10.0.2.61
```

> 加入Swarm Overlay网络节点

```shell
# 工作节点操作
# 查看工作加入token
docker swarm join-token worker
docker swarm join --token SWMTKN-1-2kke4rbao633z9d554cofss6jvvb8klbvbwq18rn8abdt1xvmg-19lovdl5t10abumpdv3kfyb9q 10.0.2.61:2377
# 查看管理节点身份加入token
docker swarm join-token manager
docker swarm join --token SWMTKN-1-2vfv7ayvyzo8or3awr584sym9vojemvhf4pbcdrf7nosqzkvqt-evplkol3bys60j09wx2nhjmiu 10.0.2.61:2377
```

> 创建Swarm Overlay网络

```shell
# 允许动态添加 【注】网络命名为下划线，docker-compose project前缀fabric network:course
docker network create --driver overlay --attachable codepasser_overlay
# 允许动态添加+加密网络
docker network create --driver overlay --attachable --opt encrypted codepasser_overlay
```

> 创建确认网络网络

```shell
docker network ls
```

> 验证网络

```shell
docker pull busybox

# 管理节点启动(10.0.2.61)
docker run -itd \
        --name c1 \
        --network codepasser_overlay \
        busybox

# 工作节点启动(10.0.2.62)
docker run -itd \
        --name c2 \
        --network codepasser_overlay \
        busybox

# 工作节点启动(10.0.2.63)
docker run -itd \
        --name c3 \
        --network codepasser_overlay \
        busybox

# 查看启动结果
docker ps -a

# 进入容器 [注] DNS配置问题
docker exec c1 ping -c 2 c2
docker exec -it c1 sh

docker exec c2 ping -c 2 c1
docker exec -it c2 sh

docker exec c3 ping -c 2 c1
docker exec -it c3 sh
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
