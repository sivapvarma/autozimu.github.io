---
layout: post
title: "Fix Input Method Switch Problem in vim "
tags: vim
categories: computer
---

This post deals with a common problem of vim users with (Chinese) Input
Method. vim's main feature is its different modes, which are mainly
insert mode, normal mode and command mode. As a Chinese, I have to input
some Chinese characters occasionally, though at quite low frequency. Of
course, this should be done in insert mode. The problem arises when I
switch to normal mode or command mode. The Input Method is still on, but
I do not really need input Chinese characters in normal or command mode.
This bothers me ever since I started using vim as my main text editor.

Could it be possible to turn off the Input Method when leaving insert
mode and turn on it when entering the insert mode? There have been
various solutions that do not work at all or work through a dirty
method. Actually, this problem has been fixed peacefully long before,
but there has not been enough materials on the web to talk about it. You
can find this post though Googling "vim 中文输入 切换",
[Gvim在切换模式的时候自动切换输入法
](http://tonysh-thu.blogspot.ca/2010/09/gvim.html), the author has
reached the right direction, but the settings are wrong, and the result
does not work as expected. The right settings are as follows

    set noimd
    set imactivatekey=S
    set iminsert=2

Those settings have been tested on Mac OS X 10.8.2 with QQ拼音. `set
noimd` is to specify no Input Method daemon. `set imactivatekey=S` is to
specify key to switch Chinese and English input. You should change it to
your own key if it is not `Shift`. `set iminsert=2` is to indicate
remembering Input Method status and switch Input Method when leaving and
entering insert mode.

References:

1. [Vim中输入法与编码设置的FAQ](http://blah.blogsome.com/2007/08/23/vim_cn_faq/)
