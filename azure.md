# azure
## 开始使用
1. 打开az的[web应用控制台](https://portal.azure.com/#view/HubsExtension/BrowseResource/resourceType/Microsoft.Web%2Fsites)
2. `发布`选择`docker`
3. ![](/images/Snipaste_2023-02-27_16-17-23.png)
4. 创建后，打开面板，找到应用服务日志，打开，保存，这样是为了看初始密码
5. 找到配置，`WEBSITES_ENABLE_APP_SERVICE_STORAGE`确保打开，为了持久化储存
6. 找到部署中心，日志，就可以看到初始密码了

## 配置
默认使用sqlite储存，如想使用自己的配置文件，配置环境变量`CONFIG_URL`即可
例：使用<gist.github.com>创建一个配置文件,然后将文件的`row`url如`https://gist.githubusercontent.com/lyj0309/134fc1ffb656863bbc079f52a0286816/raw/dc67e0b2922c17a945c4d2cc8da7627d050cb264/fffff`写入环境变量即可

## 原理

az[官方文档](https://learn.microsoft.com/zh-cn/azure/app-service/configure-custom-container?tabs=debian&pivots=container-linux)  
他说默认启用永久储存，但我这部确实false
可知`/home`文件夹是持久化的，不变的，但是[原版docker镜像的文件](https://github.com/cloudreve/Cloudreve/blob/master/Dockerfile)是变的

修改`ENTRYPOINT ["./cloudreve"]`到`ENTRYPOINT ["./cloudreve","-c","/home/config.ini"]`即可

