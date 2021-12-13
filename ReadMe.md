# Go-CQHTTP-Docker

[![Docker](https://img.shields.io/docker/cloud/automated/xzsk2/gocqhttp-docker)](https://hub.docker.com/repository/docker/xzsk2/gocqhttp-docker)

[Mrs4s/go-cqhttp](https://github.com/Mrs4s/go-cqhttp) 的Docker启动环境

**建议使用 [TG-EFB-QQ-Docker](https://github.com/xzsk2/TG-EFB-QQ-Docker) 进行QQ到Telegram的双向消息转发**

## 使用

1. 生成配置文件`config.yml`，选择`1：HTTP通信`
   
    ```bash
    docker run --rm -it --name="gocq" -v $PWD/gocq:/data xzsk2/gocqhttp-docker:latest
    ```

2. 修改`gocq/config.yml`，参考 [go-cqhttp 帮助中心](https://docs.go-cqhttp.org/guide/config.html)
   
3. 运行

    ```bash
    docker run -d --name="gocq" -v $PWD/gocq:/data xzsk2/gocqhttp-docker:latest
    ```

4. 登陆

    ```bash
    docker logs gocq
    ```
