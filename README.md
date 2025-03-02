# winsync
基于windows原生robocopy的磁盘目录同步工具，可以作为开机后台服务运行

## robocopy
核心命令参数参见 https://learn.microsoft.com/zh-cn/windows-server/administration/windows-commands/robocopy

## 主要改进
1. 简单的支持多任务后台运行，同时多多个磁盘和目录进行同步
2. 提供了windows开机自启动安装服务，开箱一键使用

## 重要说明
1. install_task.bat 要以管理员权限运行

