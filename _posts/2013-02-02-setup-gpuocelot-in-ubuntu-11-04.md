---
layout: post
title: "Setup gpuocelot in Ubuntu 11.04"
description: Finally, we got an emulator inside an emulator!
tags: [gpu, emulator, ocelot, vagrant]
categories: computer
---

## Problem

This semester, I chose a [GPU][] related course, *High parallel computing
on Graphical Processing Units (GPU)*. The problem is that my MacBook Air
does not have a [CUDA][]-capable graphical card. So I have to practice on
PCs located in teaching center. But the experience is really annoying. I
am never pleased by the Windows operating system and the Visual Studio
develop environment.

A possible solution would be writing and debugging code on my MBA, but
running and profiling it on upstairs CUDA-capable PCs.

## Solution

I googled for a while. And there were not too much [choice][]. Finally I
chose [gpuocelot][], which claims to be "dynamic compilation framework for
heterogeneous system, providing various backend targets for CUDA
programs.  Ocelot currently allows CUDA programs to be executed on
NVIDIA GPUs, AMD GPUs, and x86-CPUs at full speed without
recompilation." It seems gpuocelot fit my need quite well. But the
installation procedure is not pleasant at all. Since gpuocelot seems to
be a research oriented project, I am already lucky enough to get it
work.  So I will log the main process in case someone else would
reference. Note this is not an step-by-step instruction to setup
gpuocelot in Ubuntu 11.04. I have skipped most details and there may
exist mistakes and typos. So please be careful when reference. Any
problems encountered, feel free to contact me.

FYI, I have package the result [VirtualBox][] [VM][] as [vagrant][]
[box][], somebody can download from [here][box download] if he does not
want to dirty his hand.


## Setup compiler tools & dependencies for gpuocelot

Firstly, [Ubuntu][] [11.04][] is needed. This is the most suggested platform
by the project. Also, [Ubuntu 12.04 also seems OK][1204]. Other linux
distributions may also work. It would not work under Mac OS X 10.8.2,
though.

Secondly, [CUDA toolkit 4.0][] is needed. Again, this is the suggested
version.

Thirdly, gcc-4.4 version is needed. Versions greater than gcc-4.4 is not
supported by CUDA toolkit 4.0. The default gcc version in Ubuntu 11.04
is 4.5. So I have to downgrade. Installing gcc-4.4 and set as default
compiler by typing

    sudo aptitude install gcc-4.4 g++-4.4
    sudo ln -sf /usr/bin/gcc-4.4 /usr/bin/gcc
    sudo ln -sf /usr/bin/g++-4.4 /usr/bin/g++

Install libs required by gpuocelot

    sudo aptitude install flex bison scons
    sudo aptitude install libboost-all-dev libglu-dev

## Install gpuocelot

The installation itself is quite strait forward. The gpuocelot project
has not been updated for a long time. I have tried to built from source
on my OS X 10.8.2. I have fix some compiling errors, but failed finally.
So this time I will use binary distribution instead. Download the
corresponding binary release from the project site. It is a deb package.
Just double click on it. That's it.

## Usage

Regular CUDA program (`hello.cu` as example) could be compiled and run
against `libcelot` like this

    nvcc -c hello.cu -arch=sm_20
    gcc -o hello hello.o -locelot
    ./hello

A complete example could be found at [here][example]. The example it
self is taken from [here][1204].

In practise, I wrapped the whole development environment in vagrant.
Whenever I need to write some CUDA code, I SSH into the VM from a
[tmux][] session. The code itself is edited using my excursive editor,
[MacVim][]. Then the code is compiled and run under VM through VirtualBox
shared folder. The result is then verified and the cycle goes on. If all
goes fine, I go upstairs and profile the program.

## Final words

I wrote this post mostly using memories. So there must some errors in
the process. If you encounter problems installing ocelot when
referencing this post, do not hesitate to contact me.

## References:

* [How to install gpuocelot in Ubuntu 12.04][1204]
* [Ocelot_Installation_Manual_August_2012][]


[1204]: http://barefeg.wordpress.com/2012/06/16/how-to-install-gpuocelot-in-ubuntu-12-04/
[GPU]: http://en.wikipedia.org/wiki/Graphics_processing_unit
[CUDA]: http://en.wikipedia.org/wiki/CUDA
[choice]: http://stackoverflow.com/questions/3087361/gpu-emulator-for-cuda-programming-without-the-hardware
[gpuocelot]: http://code.google.com/p/gpuocelot/
[VirtualBox]: https://www.virtualbox.org/
[VM]: http://en.wikipedia.org/wiki/Virtual_machine
[vagrant]: http://www.vagrantup.com/
[box]: http://docs.vagrantup.com/v1/docs/boxes.html
[box download]: http://google.com
[ubuntu]: http://www.ubuntu.com/
[11.04]: http://releases.ubuntu.com/11.04/
[CUDA toolkit 4.0]: https://developer.nvidia.com/cuda-toolkit-40
[example]: https://github.com/autozimu/ECE709/tree/master/hello
[tmux]: http://tmux.sourceforge.net/
[MacVim]: http://code.google.com/p/macvim/
[Ocelot_Installation_Manual_August_2012]: http://code.google.com/p/gpuocelot/downloads/detail?name=Ocelot_Installation_Manual_August_2012.pdf&can=2&q=
