# azure
## 开始使用


## 原理

az[官方文档](https://learn.microsoft.com/zh-cn/azure/app-service/configure-custom-container?tabs=debian&pivots=container-linux)  

可知`/home`文件夹是持久化的，不变的，但是[原版docker镜像的文件](https://github.com/cloudreve/Cloudreve/blob/master/Dockerfile)是变的

修改`ENTRYPOINT ["./cloudreve"]`到`ENTRYPOINT ["./cloudreve","-c","/home/config.ini"]`即可

