### 安装websocket 命令行客户端工具

https://github.com/hashrocket/ws
```shell
yum install -y go

go get -u github.com/hashrocket/ws

echo -e "{"protocol":10021,"data":{}}" | /root/go/bin/ws ws://ws.xxxx.cn

if [ $? -ne 0 ];then

echo "websocket connect failed"

fi
```

### 其它websocket 工具

https://github.com/esphen/wsta

https://software.opensuse.org/download.html?project=home%3Aesphen&package=wsta

### curl命令行 请求 websocket
```shell
curl -i -N -H "Connection: Upgrade" \
           -H "Upgrade: websocket"  \
		   -H "Host: echo.websocket.org" \
		   -H "Origin: http://www.websocket.org" \
		   http://echo.websocket.org
```
