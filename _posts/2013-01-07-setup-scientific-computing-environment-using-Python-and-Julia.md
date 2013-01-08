---
layout: post
title: Setup Scientific Computing Environment Using Python and Julia
description:
categories: [tech]
tags: [Python, Julia]
---

## Why Python?

When I was undergraduate student, [MATLAB][] and C/C++ were my primary
programming languages, in which the main work were image processing and
small demos. I chose them because MATLAB is widely used in academic
world, and it is rather easy to get started, and I was already familiar
with C/C++. The fact that I used this combination for about two years
does not indicate I was satisfied by them (although in fact I was fairly
satisfied by something). Both of them has apparent pros and cons.

* MATLAB
    * Pros
        * easy to startup
        * fit well for scientific computing, great support for vector
          and matrix manipulation
        * handy plotting system
    * Cons
        * wield old style syntax
        * limited language expression, e.g. no or weak support for
          functions, class/object, namespace
        * rather low quality of plotting result
* C/C++
    * Pros
        * familiar syntax
        * excellent efficiency
    * Cons
        * static/compiled language
        * no plotting system


C/C++ is great for big science project, but for my daily work as a
graduate student, it is no longer an option due to the frequent
parameters varying and plotting. And I can no longer tolerate the
limited language expression of MATLAB after getting started with Python
and Ruby. Another great reason, or maybe the most import reason, is that
The MATLAB application takes too much resources and looks so unnatural
on OS X. So I came up to looking for alternatives. There are not much
options. Octave is blacklisted for its purpose to mimic MATLAB and
relatively lower efficiency. Ruby has just started its application in
scientific computing, but it is too late. The position of a dynamically
typed, gluing language in scientific computing has been token by its
brother, Python. Although I am more prone to Ruby for its simplicity and
elegance, Python is the only choice.


## Python Packages for Scientific Computing

Python has long been adopted by the scientific computing community.
There are various packages created for almost all kinds of domains and
problems. The most import packages are `numpy`, `scipy` and
`matplotlib`. `numpy` as its name indicates, provides fundamental pieces
for scientific computing, like array support, input and output data.
`scipy` is built on top of `numpy`, which provides solutions for higher
level problems, like optimization. While `matplotlib` is a litter
different, it is a plotting system, named by 'MATLAB-like plot lib'.
Besides those three packages, there are also `SymPy` for symbolic
mathematics, `scikit-learn`, `mlpy` and `PyBrain` for machine learning.

P.S. Another python package, `ipython` provides enhanced python terminal
interfaces.

## Installing Python Packages

On Linux/OSX platform, python has already been shipped within the
system. There are mainly two different approach to install python
packages. Firstly, all python packages could be installed via `pip`, a
python package managing tool, which will download python packages and
install them to appropriate locations. Usually, this is the recommended
way to install python packages. But for `numpy`, `scipy` and
`matplotlib`, this approach is not preferred. Since a significant part
of those packages are written in C/C++, plus `matplotlib` has various
bindings for many GUI toolkits, `pip` cannot deal well with compiling
sources and parsing dependencies. So the second approach is recommended.
For Linux users, it is quite simple, just install those packages from
the distribution repositories using appropriate package managers. For
ArchLinux users (has not been tested yet)

    sudo pacman -S python-numpy python-scipy python-matplotlib
    sudo pacman -S ipython

While for OS X users, package managing has always been painful. Although
Hombrew is welcomed and applauded by many Mac developers, it is just a
five point offscum when combating with Linux package managers. Of
course, Homebrew cannot handle so hard a problem. While the midst of
sadness, someone has wrote something named [Scipy Superpack][] to cure
this pain.


## Why Julia?

Python is good for general programming, but there is one thing I am not
satisfied, in my work, I have to deal with computing intensive tasks. So
dynamically typed is one thing, speed is another import thing that
cannot be overpassed. I choose [Julia][] for its high efficiency and
excellent math support. Installing julia is quite easy, just download
compiled binaries from the [downloads list][Julia binaries], extract it
and that's all. If you want dirty your hand, you can [compile from
source][Julia source].

Getting started with Julia is quite as easy. If you have some
programming experiences, it would work just as you predict, except Julia
lacks class/object support and a mature plotting system. For the part of
class/object support, it will be hardly to be put on the schedule, as
Julia focus intensively on efficiency. And the support for namespace
compensate the need for object support at some points. Object
Oriented Programming (OOP) is an excellent approach of programming, but
it not the only one, and probably not the best one for scientific
computing at most situations. As for the latter feature, the graphics
solutions have long been discussed in the Julia communities, and some
preliminary work have already been done.

Although some progress have been made in [Winston][] and [Gadfly][],
which are two main graphics solutions for Julia, the functionality is
still limited.  I cannot wait that long for a mature solution to evolve,
so I started my own solution by wrapping matplotlib. The work is easier
than I had thought, and the result is quite satisfying. More info about
this wrapper could be found at the [project page][pyplot.jl].

Finally, here is a screen shot when working on ECE 754 project 2 using
[Julia][] + [pyplot.jl][].


![screenshot julia](/images/screenshot-julia.png)




[MATLAB]: http://www.mathworks.com/products/matlab/ "The Language of Technical Computing"
[Homebrew]: http://mxcl.github.com/homebrew/  "The missing package manager for OS X"
[Scipy Superpack]: http://fonnesbeck.github.com/ScipySuperpack/ "Recent builds of fundamental Python scientific computing packages for OS X"
[Julia]: http://julialang.org/ "A fresh approach to technical computing"
[Julia binaries]: http://code.google.com/p/julialang/downloads/list
[Julia source]: https://github.com/JuliaLang/julia
[Winston]: https://github.com/nolta/Winston.jl "2D plotting for Julia"
[Gadfly]: https://github.com/dcjones/Gadfly.jl "Crafty statistical graphics for Julia"
[pyplot.jl]: http://autozimu.github.com/pyplot.jl/ "Graphics solution for Julia based on pyplot from matplotlib"
