---
title: Random Thoughts about vim
description:
categories: vim
tags: [vim]
---

> 作为 vimer , 怎可没有篇吐槽 vim 的 post?

作为编辑器, vim 无可挑剔. 相较于普通编辑器多出的 Normal,  Visual, Command 模式, 几乎可以快速精准的完成任何编辑工作. 无数的插件更使得 vim 如虎添翼, 无所不能. 很多 vim 用户(包括我), 总是想在 vim 中完成各种工作, 收发电子邮件, 记笔记, 写部落格, 编写程序, 调试程序 ... 我知道这很变态, 很强迫症, 但这种情节只有真正的 vim 用户才能体会的到. vim 的操作方式看似异常古怪, 但一经熟悉, 就能体会到这种操作方式带来的巨大的便捷快速. 经常的情况是, 我在 chrome 中不停的按 `Esc`, BBS 中回帖时又狂按 `:wq` ...

vim 插件的存在确实可以部分实现上述要求, 但总不是那么完美. 作为用户, 只能一面羡慕各种 IDE 的强大, 一面在 vim 中忍受各种半成品的脚本插件 bug 频出的困扰. 这样就引出 vim 相对 TextMate, Sublime Text 2 的一个极大弱点, 缺少官方支持的插件系统. 作为编辑器, vim 开发者并没有过错, vim 本身定位于 general use 的强大便捷编辑器, 就这点来看, vim 已相当接近当初设立的目标(看最近的changelog, vim 似乎有终止开发的意思). 但作为终端用户, 官方插件系统的缺失显得相当不友好. 第三方的插件系统仍然各做个的, 难以看出哪个会占据优势. 所以, 一个比较好的方案是, vim 官方选定某个插件系统作为 framework, 建立更多的官方插件并集成进系统, 建立更统一更友好的插件社区. (自行参考 Firefox add-ons, Chrome web store)

> 附 my vimrc: [@GitHub](https://github.com/autozimu/dotfiles/blob/master/.vimrc)
