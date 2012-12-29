---
layout: post
title: Timeline of Note Taking Workflow
description: 生命不息, 折腾不止
categories:
tags: [Byword, nvALT, markdown, vim, OSX]
---

做科学/技术的人总是要跟各种细节打交道, 细节多了,
仅有的记忆力显得捉襟见肘. 写博客, 记笔记, 都不失为辅助记忆的好方法.
记得之前有个教授宣扬, 以后不需要强制博士生们发论文了, 写写博客其实更好,
还论证了写博文优于写论文的诸多优点, blablabla ...
但并非所有的材料都适于拿来放在博客上, 很多时候还是笔记软件更适合一些,
写得随意, 查找方便. 记笔记的这段时间, 笔记记的不多, 笔记软件倒用的不少.
权且记录, 以飨来者.

之前沉迷于 Linux 和 vim, 于是在Vim中找了款插件, [VimWiki][],
就开始了笔记生涯. 怎奈, vim 作为编辑确为神器, VimWiki
作为笔记软件就太差强人意了. 找笔记要敲N多次的 `hjkl+Enter`. 遂放弃
VimWiki, 投奔 [Zim][], 这次的转换还算顺利, Zim 足够快速轻巧,
笔记的树形组织结构清晰明了. 之前积累的笔记不也是很多.

之后有段时间必须用 Windows 平台. 经常穿梭于各个平台的我,
自然希望所有的软件都是跨平台的. 多亏了 Zim, 让我彻底打消我这个念头. 虽然
Zim 本身是跨平台的（由 Python+PyGTK ）开发, 虽然 Zim on Windows
所有的功能和 Linux 下的几乎一样, 但是其用户界面和用户体验, 惨不忍睹 ...
无奈, 只得继续寻找. 试了多款笔记软件, 有原始小巧简陋的, 有现代臃肿华丽的
, 都不甚满意, 实则无奈, 最后选择了大众的 [Evernote][].
这次转换损失了大部分之前的笔记, 着实肉疼. Evernote 作为笔记软件中规中矩,
如果不是刻意追求编辑方式和排版效果的话, Evernote 已经做得足够好了.
但很不幸的, Evernote 未能满足我苛刻的要求. 作为一个 vim 控, 很难理解
[WYSIWYG][] 的工作方式. 我只是要加一个小标题,
为什么还需要将右手移开键盘, 捉住鼠标, 选中文字, 选择大号字体加粗,
再放下鼠标,再将右手移回键盘 ...Google 多次 "Evernote + [Markdown][]",
未果.

数日前穿梭至 OS X 平台, 在 [makeuseof][] 闲逛时看到推荐 [Notational
Velocity][], 心想, 大名鼎鼎的 Evernote 用着都不甚舒服,
何况此名不见经传的小众软件？ 怎奈, 近几日甚是无聊, 又见几篇推荐文章,
就下载了 [nvALT][] (fork of Notational Velocity). 试用两分钟, 泪流满面,
这 TM 不就是我要的笔记软件么. 功能与我梦想的一模一样, 默认文本格式, 默认
(Multi)Markdown 的排版方式, 支持HTML预览, 支持外部编辑器.
另附赠全局搜索, 摒弃了组织结构. 至此, nvALT 管理笔记, [Byword][]
编写修改新的笔记, 世界终于清净了... 嗯, 等哪天发工资了, 给 nvALT
的维护者捐点咖啡钱去.

update 2012-10-23: 换用`vim`来写了 , `snipmate` + `vim-markdown`

[VimWiki]: http://code.google.com/p/vimwiki/
[Zim]: http://zim-wiki.org/
[Evernote]: http://www.evernote.com/
[Markdown]: http://en.wikipedia.org/wiki/Markdown
[makeuseof]: http://www.makeuseof.com/
[Notational Velocity]: http://notational.net/
[nvALT]: http://brettterpstra.com/project/nvalt/
[Byword]: http://bywordapp.com/
[WYSIWYG]: http://en.wikipedia.org/wiki/WYSIWYG
