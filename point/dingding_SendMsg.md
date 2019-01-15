
```shell

# 发送指定消息

curl 'https://oapi.dingtalk.com/robot/send?access_token=9e2549f6a0bb28767bdexxxxxxxxxxxxxxxxxx81975c981005abbd' \
   -H 'Content-Type: application/json' \
   -d '
  {"msgtype": "text", 
    "text": {
        "content": "我就是我, 是不一样的烟火"
     }
  }'
  
#   发送文本内容并@指定的人

curl 'https://oapi.dingtalk.com/robot/send?access_token=9e2549f6a0xxxxxxxxxxxxxxxxxx447981975c981005abbd' \
  -H 'Content-Type: application/json' \
  -d '{"msgtype":"text","text":{"content":"我就是我, 是不一样的烟火"}, 
  "at":{"atMobiles":["176xxxx1234"],
        "isAtAll":false}}'
  
```