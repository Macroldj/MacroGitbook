# Macro gitbook
## 编写README.md
```shell
# 编写你的文档
```

## 编写SUMMARY.md
```shell
* [介绍](README.md)
* [第一级目录](docs/第一级/README.md)
  * [第二级目录](docs/第一级/第二级/README.md)
    * [第三级目录](docs/第一级/第二级/第三级/README.md)
```

## 编译并拉起服务
```shell
# 前提是安装docker, docker-compose
docker-compose up --build -d
```