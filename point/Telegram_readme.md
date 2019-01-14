# telegram API 发送消息 ----消息通知机器人

## linux 下 crontab 定时任务通过 telegram API的send Message 发送告警信息

##1. 创建一个 telegram bot 机器人

###在telegram 搜索框 搜索  BotFather

#### BotFather 是 管理所有机器人的父机器人。可以使用它来创建新机器人或者管理现有的机器人

1.1 创建新机器人指令：

/newbot

为新机器人取一个名字

Notifier

为新机器人创建一个全网唯一的用户名(必须以_bot结尾)

notifier_bot

一旦机器人创建好，系统会生成一串token用于调用telegram 的 API

4334584910:AAEPmjlh84N62Lv3jGWEgOftlxxAfMhB1gs

1.2 获取 chat ID

在搜索框 搜索 notifier_bot

点击 /start


在浏览器通过以下的格式获取 chat id (把<TOKEN>替换为对应机器人的token)

https://api.telegram.org/bot<TOKEN>/getUpdates


或者使用 curl 命令来请求

```shell
$ curl https://api.telegram.org/bot4334584910:AAEPmjlh84N62Lv/getUpdates
..."chat":{"id":123456789,"first_name":"my_first_name","type":"private"}...

```

## 2. 调用 telegram bot api: send message

2.1 浏览器发送信息

```shell

https://api.telegram.org/bot<TOKEN>/sendMessage?chat_id=<CHAT_ID>&text=Hello%20World

```

2.2 linux 命令行

```shell
$ curl -s -X POST https://api.telegram.org/bot<TOKEN>/sendMessage -d chat_id=<CHAT_ID> -d text="Hello World"

```

2.3 shell 命令行

```shell
#!/bin/bash

TOKEN=<TOKEN>
CHAT_ID=<CHAT_ID>
MESSAGE="Hello World"
URL="https://api.telegram.org/bot$TOKEN/sendMessage"

curl -s -X POST $URL -d chat_id=$CHAT_ID -d text="$MESSAGE"
```















