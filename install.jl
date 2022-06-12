using Pkg
Pkg.add(url="https://github.com/carstenbauer/WorkshopWizard.jl/")
using WorkshopWizard

if Sys.iswindows()
    path = joinpath(homedir(), "Desktop")
else
    path = homedir()
end
success = WorkshopWizard.install(;repo="https://github.com/mfherbst/aachen_introduction_dftk",
                                  path,
                                  global_IJulia=true,
                                  auto_overwrite=false)

repo = joinpath(path, "aachen_introduction_dftk")
if success
    Pkg.activate(repo)
    using PyCall
    using Conda
    using REPL.TerminalMenus

    if ispynull(pyimport_e("ase"))
        if !PyCall.conda
            println("The python dependency ASE is missing and needs to be installed.")
            println("To do so, most likely you need to run the following command:")
            python = PyCall.python
            println("     $(python) -m pip install ase")
            @info "Do you want me to run this command right now?"
            selected_yes = request("", RadioMenu(["yes", "no"], pagesize=2)) == 1
            if selected_yes
                run(`$(python) -m pip install ase`)
            end
        else
            println("Installing ASE to Julia built-in Conda environment")
            Conda.add("ase", channel="conda-forge")
        end
    else
        println("Found ASE ... not installing.")
    end

    @info "That's it. Start the notebook server with 'using IJulia; notebook(dir=\"$repo\")' ..."
end
