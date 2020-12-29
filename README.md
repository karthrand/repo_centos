# repo_centos
centos7的yum内网源
# 使用方法
## 使用Dockerfile构建镜像
下载git库后执行命令，在安装docker的Linux环境下执行命令
docker build -t [自定义镜像名] .
如，自定义镜像使用名称为centos:repo
## 下载yumrepo的本地库，或者同步其他网络源，此处以同步本地库为例
已有本地库下载地址： 
将本地库放在/home/yumrepo下为例

## 使用构建的镜像创建内网服务器的容器
- docker run -tid --name="yumrepo" -v /home/yumrepo:/var/www/html/yumrepo centos:repo

## 其他CentOS7环境配置此内网源(需要与内网服务器容器网络互通)
- 登录其他内网CentOS的主机后，将/etc/yum.repos.d/下的内容备份后，新建CentOS-Base.repo文件    
- vi /etc/yum.repos.d/CentOS-Base.repo，内容输入git库中CentOS-Base.repo中的内容，
并修改其中IP为容器服务器的IP