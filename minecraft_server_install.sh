#!/bin/bash
echo "
@author Lancelot
Project URL:https://github.com/isharework/Minecraft
";
#1.安装java环境
echo -e "开始安装配置java环境...";
yum -y install java-1.8.0-openjdk*
echo -e "java环境安装完成";
#2.下载配置Minecraft1.12.2服务端
echo -e "下载Minecraft1.12.2服务端";
mkdir minecraft
cd minecraft
wget --no-check-certificate -O minecraft_server.1.12.2.jar http://s3.amazonaws.com/Minecraft.Download/versions/1.12.2/minecraft_server.1.12.2.jar
#4.启动我的世界服务端
echo -e "将启动我的世界服务端";
wget --no-check-certificate -O minecraft_server_run.sh https://raw.githubusercontent.com/isharework/Minecraft/master/minecraft_server_run.sh && bash minecraft_server_run.sh
echo -e "若是出现You need to agree to the EULA in order to run the server. Go to eula.txt for more info.
请修改当前目录下的eula.txt 、server.properties文件.
eula.txt文件的修改:
eula=false   
修改为eula=true 
server.properties文件的修改:
加上online-mode=false
修改完成后再次运行脚本即可 nohup sh minecraft_server_run.sh &
";