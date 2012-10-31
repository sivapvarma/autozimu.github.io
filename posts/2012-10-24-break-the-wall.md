---
title: Break the Wall:What? Why? How?
date: '2012-10-24'
description: Where there is a wall, there is a way!
categories: [tech]
tags: [misc]
---

## What?

GFW, 全称 The Great Firewall of China, 中国防火长城, 大陆政府的网络审查.
"柏林墙" 的网络版.

## Why?

No why. It shouldn't be like this.

暂且不论GFW是否能达到其最初的设计目的 (更确切的, 我认为是适得其反), 私以
为, 作为人最基本的权利, 言论的自由是应当, 也是必须, 享有的. 即使一个人讲
得全是错话, 谁也不能阻止他讲话, 或者, 阻止别的人听到他讲话. 对于头脑健全
的人, 自有其辨明是非的能力.

## How?

> 现代中国三大存必备技能: 英语, 开车 & 翻墙.

所谓知己知彼. 先来熟悉下 GFW 的几种手段:

1. __DNS 污染__ (DNS filtering and redirection): 这个是最基本的手段. 简单的
   讲 , 就是 DNS 服务器拒接解析某些网站的 IP, 没有目标网站的 IP 地址, 客
   户端自然不能连接某些个网站. example: [Google
   Plus](https://plus.google.com)
2. __URL 过滤__ (URL filtering): 不是完全屏蔽网站, 而是当服务器和客户端传输
   某些敏感信息时中断链接. example: 在[Google
   HK](http://www.google.com.hk "") 搜索"胡萝卜"
3. __包过滤__ (Packet filtering): URL 过滤的升级版. 检测包内是否含有关键词.
4. 链接重置 (Connection reset): 如果之前链接因为关键词被中断, 之后所有的
   链接请求都会被屏蔽.
5. __IP 屏蔽__ (IP blocking): 某些特定网站 IP 的请求全部屏蔽. example:
   [Facebook](http://facebook.com), [twitter](http://twitter.com)


兵来将挡，水来土掩. 翻墙的方案主要有:

* __hosts file__: 针对手段1, 既然 ISP 不给解析, 大不了自己解析 -- 将网站
的域名和对应的IP写入系统 hosts (唉, 这本是二十多年前 DNS Server 出现之前
人们登录网站的方法 ... ). 当然不需要自己写 (自己也写不了), 已经有人写过
了. 这里可以找到 [smarthosts](http://code.google.com/p/smarthosts/),
[HostsX](http://orztech.com/softwares/hostsx/)
* __SSL__: 针对手段 2 & 3. 将客户端和服务器的数据链接加密. Chrome 中, 将
地址栏中的 `http` 换做 `https` 即是加密链接; 或者, 地址栏中输入
`chrome://net-internals`, 添加需要加密的网站域名, 这样以后链接该网站时自
动使用加密链接; 再或者, 使用 Chrome Plugins, 例如 [Use
HTTPS](https://chrome.google.com/webstore/detail/use-https/kbkgnojednemejclpggpnhlhlhkmfidi?hl=en-US&utm_source=chrome-ntp-launcher),
or [HTTPS
Everywhere](https://chrome.google.com/webstore/detail/https-everywhere/gcbommkclmclpchllfjekcdonpmejbdp/details?hl=en-US&utm_source=chrome-ntp-launcher).
FYI, 校园网用户有福了, IPV6 协议默认就是加密的,
[ipv6-hosts](http://code.google.com/p/ipv6-hosts/)
* Proxy (代理): 针对1, 2, 3, 4 & 5. 注意, 此方法不是一劳永逸解决所有问题
, 通过代理服务器会有访问速度, 服务稳定性和隐私等方面的问题. 代理的方法有
很多中, 比如[自由门](http://dongtaiwang.com/loc/download.php), [无界
](http://ultrasurf.us/). 相对于这些怀有特定目地开发的软件, 我更推荐谷歌
服务器的代理, 也就是[goagent](http://code.google.com/p/goagent/). 或者使
用"本地代理", [西乡计划第三季
](http://code.google.com/p/west-chamber-season-3/). 当然, 如果你有钱没闲
, 也可以选择付费的VPN方案 (话说, 挑选个速度有保证又可靠的VPN也不是件易事
).

## References
* [Wikipedia](http://en.wikipedia.org/wiki/Internet_censorship_in_the_People%27s_Republic_of_China#Technical_implementation "Internet censorship in the People's Republic of China")

