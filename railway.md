1. 注册一个railway.app账号
2. 生成一个新项目，注意是空项目
![image.png](https://wx1.sinaimg.cn/large/008rgIcAly1h1qw3exqzbj30no0nrn0a.jpg)
3. 生成一个token，注意是你新建的这个项目，详情<https://docs.railway.app/deploy/integrations#project-tokens>
![image.png](https://wx1.sinaimg.cn/large/008rgIcAly1h1qw53kh8ej31cc0ozq7e.jpg)
4. 准备一个配置文件,详情<https://docs.cloudreve.org/getting-started/config>,下面给出最简单的配置
```ini
[System]
; 运行模式
Mode = master
; 监听端口
Listen = :80
Debug = false
; Session 密钥, 一般在首次启动时自动生成
SessionSecret = 123
; Hash 加盐, 一般在首次启动时自动生成
HashIDSalt = abc
```
**如果直接这样，数据是不会保存的**，最好的方式是使用mysql储存数据，达到数据持久化的效果
5. （可选）配置mysql，在railway的项目中添加一个mysql，mysql地址用户密码啥的可以到mysql详情中查看，然后把这个mysql配置写入配置文件中，另，可以使用自己的公网mysql，在这里推荐个免费mysql<https://planetscale.com>
![image.png](https://wx1.sinaimg.cn/large/008rgIcAly1h1qwg2fj1vj31590cd40h.jpg)

6. fork此项目

7. 将配置文件和token导入到密钥，配置文件命名`CONFIG`，密钥命名`RAILWAY_TOKEN`
![image.png](https://wx1.sinaimg.cn/large/008rgIcAly1h1qwzz4hduj31nt0w8neg.jpg)
![image.png](https://wx1.sinaimg.cn/large/008rgIcAly1h1qwjd89duj30xg0ibwhs.jpg)

8. 转到action界面的一个workflow，re-run jobs，即可部署至railway
![image.png](https://wx1.sinaimg.cn/large/008rgIcAly1h1qwq7gb8xj31hy0iw0wx.jpg)

9. 转到railway ,找到depoly log,即可获取用户密码
![image.png](https://wx1.sinaimg.cn/large/008rgIcAly1h1qwt0yu6gj311r0t77h3.jpg)

