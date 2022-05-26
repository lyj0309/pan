## 前提需要
1. 阿里云账号
2. 一个域名（最好备案）
3. 爱折腾

## 1.登录云函数控制台，创建服务  
![image.png](https://wx1.sinaimg.cn/large/008rgIcAly1h2lvg61wolj30tn0dcgor.jpg)

## 2.进入服务，创建函数
去cloudreve release页面下载linux_amd64包，解压后上传文件夹，
文件夹里面包含两个文件，一个是cloudreve,一个是config.ini(自己生成)
<https://github.com/cloudreve/Cloudreve/releases/tag/3.5.3>

![image.png](https://wx1.sinaimg.cn/large/008rgIcAly1h2lvng9fyjj31x4127apc.jpg)

**注意：端口是配置文件里面的端口，不写默认5212**

## 3.验证函数
在函数详情里面即可看到网址，
![image.png](https://wx1.sinaimg.cn/large/008rgIcAly1h2lvqmzx1ij317i0oy11p.jpg)

但是却是直接下载，打不开，这是因为
> 如果您在浏览器中直接打开请求地址，将会以附件的方式下载响应。这是因为 Http 触发器会自动在响应头中添加 Content-Disposition: attachment 字段。您可以使用自定义域名避免该问题。

所以需要配置自定义域名

## 4. 配置自定义域名
阿里云写的很详细
<https://help.aliyun.com/document_detail/90763.html>

配置完即可访问
## 5. 配置github action自动更新版本
### 5.1 下载云函数配置文件
在函数配置页面，下载配置文件得到s.yml
![image.png](https://wx1.sinaimg.cn/large/008rgIcAly1h2lvzunqw5j31o70b4n3o.jpg)


在workflows文件夹有一个aliyun action,打开这个工作流即可，需要配置以下action secrets
![image.png](https://wx1.sinaimg.cn/large/008rgIcAly1h2lvyiog8kj31660gck23.jpg)
+ AccessKeyID
+ AccessKeySecret
+ AccountID
+ SYML

`SYML`是下载的s.yml

