using Pkg
println("Activating environment in $(pwd())...")
Pkg.activate(".")
println("Installing packages...")
flush(stdout)
Pkg.instantiate()
Pkg.precompile()

using PyCall
using Conda
if ispynull(pyimport_e("ase"))
    if !PyCall.conda
        println("Not installing ASE albeit missing. Please install ASE manually.")
        println("To do so, most likely you want to run the following command:")
        python = PyCall.python
        println("     $(python) -m pip install ase")
    else
        println("Installing ASE to Julia built-in Conda environment")
        Conda.add("ase", channel="conda-forge")
    end
end

println("Done!")