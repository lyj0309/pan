# cloudreve by sass
~~因为abuse, reilwaiy已经屏蔽cloudreve关键字，凡是出现了直接不能部署~~  
还是不是很推荐大家使用railway进行部署，动不动就封帐号，风控很离谱，没啥保障

这里推荐几个平台
+ 阿里云函数
~~虽然公网流量费用需要钱，但人不多的话还可以接受，一个月1-2g，也就1元一个月，一年10元左右~~
阿里云也要钱了
缺点：一般需要冷启动，启动时间慢

+ azure（推荐）
azure提供一个免费的容器，每天有几百m的免费额度，可选香港，速度快
**需要信用卡或学生账号**
全名`azure web应用程序`

+ koyeb  
pass平台，提供免费容器，至于封号策略还不是很清楚

+ fly.io  
提供每月100g流量免费额度，有hk，不过线路辣鸡

+ render.com
和fly一样，100g，用的aws，有sg

如有任何问题，欢迎提issue
## 功能特性
+ 每日检查cloudreve更新，并自动更新

## 快速使用
[阿里云函数](./aliyun.md)  
[railway](./railway.md)  
[azure](./azure.md)

## 注意事项
+ 除了azure可以保存数据外，其他方式都建议使用数据库保证数据持久化，推荐几个平台

+ neon.tech  pgsql
+ PlanetScale mysql
+ tidbcloud.com mysql
+ supabase.com pgsql
+ render.com
+ fly.io
