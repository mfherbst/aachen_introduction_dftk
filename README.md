# Introduction to plane-wave DFT and DFTK  [![][binder-img]][binder-url]

These lecture notes provide a brief introduction
into plane-wave density-functional theory (DFT)
and the [density-functional toolkit](https://dftk.org) (DFTK).
Some familiarity with electronic structure theory
is assumed, but since the lecture does not aim at discussing the details
no in-depth knowledge is required.

The material was prepared for the 
[*Mathematical Aspects of Computational Chemistry*](http://www.acom.rwth-aachen.de/3teaching/0classes/archiv/mathchem)
lecture series by Prof. Benjamin Stamm and myself at RWTH Aachen.

## Working with these notes online
If you do not want to install Julia, just run these notes
[on binder][binder-url],
which will allow you to play with the notebooks in your browser.
However, for [working on the exercises](https://nbviewer.jupyter.org/github/mfherbst/aachen_introduction_dftk/blob/master/4_Exercises.ipynb)
the computational performance available on binder will probably not be sufficient.

## Working on your own computer
For working with the material on your own computer you will need:

1. A Julia installation, see [Julia downloads](https://julialang.org/downloads/)
   and [Installation instructions](https://julialang.org/downloads/platform.html).
   At least **Julia 1.6** is required.
1. An [IJulia setup](https://github.com/JuliaLang/IJulia.jl),
   which includes both setting up Jupyter notebook and the Julia kernel for the latter.
1. The Julia packages `DFTK`, `Plots` and `PyCall`, e.g. install them from your Julia REPL
   ```
   import Pkg; Pkg.add(["DFTK", "Plots", "PyCall"])
   ```
   
More detailed instructions how to set this up can be found in the
[Exercises Jupyer notebook](https://nbviewer.jupyter.org/github/mfherbst/aachen_introduction_dftk/blob/master/4_Exercises.ipynb),
which you can [view conveniently from your browser](https://nbviewer.jupyter.org/github/mfherbst/aachen_introduction_dftk/blob/master/4_Exercises.ipynb)
using nbviewer.

[binder-url]: https://mybinder.org/v2/gh/mfherbst/aachen_introduction_dftk/master
[binder-img]: https://mybinder.org/badge_logo.svg
