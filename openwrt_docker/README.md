# 软路由openwrt内的docker安装的一些容器命令
# 注意 -p是端口重定向，：前面是宿主机端口，后面是容器默认端口，在实际当中安装的时候没须加入-p ****:****，只要记得容器默认端口，而宿主机没有相同的端口被其他插件使用（假若有提前修改为其他的）。
# 注意 -v是目录影射，众所周知，容器的目录是不允许修改的，因此在安装时要提前影射其参数储存目录到宿主机自定义的某个目录， -v后面:前面的这个目录就是宿主机自定义的某个目录。
# docker图形化管理工具汉化版portainer-ce
docker run -d --net=host --restart=always --name="portainer" -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data 6053537/portainer-ce
# 学习强国
docker run -d \
  -e "ZhuanXiang=True" \
  -e "Pushmode=6" \
  -p "9980:80" \
  --net=host
  --name=techxuexi-web \
  --shm-size=2g \
  --restart=always \
  -v /opt/techxuexi-web/xuexi/user:/xuexi/user
  docker.mirror.aliyuncs.com/techxuexi/techxuexi-amd64
# 青龙面板
docker run -dit \
  -v /opt/ql:/ql/data \
  -p 5700:5700 \
  --net=host \
  --name qinglong \
  --hostname qinglong \
  --restart=always \
  whyour/qinglong:latest
 # adguardhome（首次WEB登陆设置端口3000）
docker run -tid --name adguardhome --net=host --restart always -v /opt/adguard/work:/opt/adguardhome/work -v /opt/adguard/conf:/opt/adguardhome/conf adguard/adguardhome
# 宝塔mini版（默认账号：username密码password）
docker run -tid --name baotamini -p 80:80 -p 8888:8888 --net=host --privileged=true --shm-size=1g --restart always -v baota_www:/www -v /宿主机/自定义/某个目录/wwwroot:/www/wwwroot baiyuetribe/baota_mini
# 宝塔完整版
docker run -tid --name baota -p 80:80 -p 8888:8888 --net=host --privileged=true --shm-size=1g --restart always -v baota_www:/www -v /宿主机/自定义/某个目录/wwwroot:/www/wwwroot pch18/baota
# [openwrt零基础一键搭建宝塔、论坛、社区、网校、视频网站、博客、社交、发卡网站等等](https://www.right.com.cn/forum/thread-4061094-1-1.html)
# [使用docker安装完整版的ubuntu系统](https://blog.51cto.com/u_15127555/3641937) 注意apt install net-tooles安装报错请改用apt-get install net-tooles

 

