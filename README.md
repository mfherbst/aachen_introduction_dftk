# Introduction to plane-wave DFT and DFTK

These lecture notes provide a brief introduction
into plane-wave density-functional theory (DFT)
and the [density-functional toolkit](https://dftk.org) (DFTK).
Some familiarity with electronic structure theory
is assumed, but no in-depth knowledge is required.

The material has been prepared for the
[*Mathematical Aspects of Computational Chemistry*](http://www.acom.rwth-aachen.de/3teaching/0classes/mathchem)
lecture in summer semester 2022 at RWTH Aachen
and works best with **DFTK 0.5** and **Julia 1.7**.
A great deal of the material has also been discussed
in the 3-hour workshop
[A mathematical look at electronic structure theory](https://michael-herbst.com/teaching/2021-juliacon-workshop-dftk/) at JuliaCon 2021.
You can find the [recording of this workshop on youtube](https://www.youtube.com/watch?v=HvpPMWVm8aw).

## Software and material
Working with these notes requires:
- [Julia 1.7](https://julialang.org/downloads/)
- Python installation with [ASE](https://wiki.fysik.dtu.dk/ase/)
- [Jupyter](https://jupyter.org/) and [IJulia.jl](https://github.com/JuliaLang/IJulia.jl)
- This repository of workshop materials
- All required dependencies (Julia packages) for the workshop

### RWTH Aachen Jupyter lab
If you are a student at RWTH Aachen and want to use the Julia-Jupyter setup
RWTH provides, please see the respective section in the
[1_Installation](1_Installation.ipynb) notebook.

### Getting Julia
For following the course you will need at least **Julia 1.7**.
Julia can be easily obtained in binary form from [Julia downloads](https://julialang.org/downloads/).

### Getting all the rest
To get the remaining files and dependencies
start up `julia` and in the resulting REPL shell,
copy and paste the following:

```julia
import Downloads
script = Downloads.download("https://raw.githubusercontent.com/mfherbst/aachen_introduction_dftk/master/install.jl")
include(script)
```
This [downloads the install.jl script](https://raw.githubusercontent.com/mfherbst/aachen_introduction_dftk/master/install.jl)
and runs it from julia.
Follow the instructions on the screen and start the Jupyter notebook server
with the command that will be printed.

As an alternative you can also also run the following commands manually
(this requires to have `git` and `julia` available from the commandline):
```
git clone https://github.com/mfherbst/aachen_introduction_dftk
cd aachen_introduction_dftk
julia install-manual.jl
```

### Troubleshooting
If you are facing issues, check out
the [great troubleshooting section](https://carstenbauer.github.io/WorkshopWizard.jl/dev/troubleshooting/)
from the WorkshopWizard package by Carsten Bauer (which `install.jl` is using).

### Check everything works
There is a section in the [1_Installation](1_Installation.ipynb) notebook
with a few quick commands to check everything works as expected.

## Working with these notes online (Beta)
Click on the [![Binder](https://mybinder.org/badge_logo.svg)][binder-url]
badge to work with these notes online (without a local Julia installation).
However, for [working on the exercises](https://nbviewer.jupyter.org/github/mfherbst/aachen_introduction_dftk/blob/master/7_Exercises.ipynb)
the computational performance available on binder will probably not be sufficient.

[binder-url]: https://mybinder.org/v2/gh/mfherbst/aachen_introduction_dftk/master
