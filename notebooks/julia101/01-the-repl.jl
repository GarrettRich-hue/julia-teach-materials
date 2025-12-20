### A Pluto.jl notebook ###
# v0.20.21

using Markdown
using InteractiveUtils

# ╔═╡ fcd7027e-db39-11f0-835b-6da0ae99d520
md"""
# Welcome!

Before continuing make sure have installed and enabled Julia, VSCode, and the Julia extension for VSCode. Also make you know how to open the terminal and VSCode.

These beginning notebooks are meant to be read with another person who understands Julia and can point you in the right direction. Some material here may not go into much detail and expect some level of exploration on part of the reader.

# What's What?

In these notes there are two windows which we are going to get you aquainted with: The Terminal and VSCode. We are also going to explain what Julia is. 

## Giving Commands
### The Terminal

The terminal lets you write commands which the computer will then perform. You may have used it to install some of the software. Commands have to be written in a particular language that the computer can understand. The language the terminal uses depends on the computer but it is probabily either bash or zsh. Here are some commands you may want to try out:

```
touch my-text-file.txt
```
This will create a text file in the current active directory.

```
ls
```
This will give a list of all the files and folders in the active directory.

### Julia REPL
But for these programming notes, we will be using a different computer language called Julia. To start talking to the computer with Julia,
enter the following command:
```
julia
```

After entering this you should be greated by the Julia REPL. Now you can enter commands written in julia. Your old commands in the terminal will not work because those commands are written in a different language (try it).

Try the following Julia commands:
"""

# ╔═╡ 76fef068-7e57-48e6-a47c-210428382009
md"""
Reply with: Hi!
"""

# ╔═╡ 022046fa-2947-4d9e-ba40-d7733bfa4be2
println("Hi")

# ╔═╡ ae660577-f7f5-4d23-bfd1-f6c417973b51
md"""
Reply with on seperate lines: Hello World
"""

# ╔═╡ 254223f5-962b-484f-b0e4-4f2d8095ee70
println("Hello"); println("World")

# ╔═╡ 861bf015-437d-4e35-b7a3-794bd9d77abf
md"""
Calculate: 1 + 1
"""

# ╔═╡ 113b9585-220e-417f-b989-8be3ad35bf4d
1+1

# ╔═╡ 9972d47d-e0d3-46a8-b37e-92fa53e6df48
md"""
Calculate: 10 x 10
"""

# ╔═╡ 2597655e-cc3f-4667-ab6d-f8a933164f57
10 * 10

# ╔═╡ 07ccb91c-f290-4e77-b215-5b8ff47e6492
md"""
Calculate: 8 divided by 4
"""

# ╔═╡ 88da173f-9ddb-4ed6-8f71-aae53ca2d316
8/4

# ╔═╡ e04fa855-5ef5-4870-9181-8d5896589836
md"""
Calculate: 5 divided by 4
"""

# ╔═╡ cfffff4b-2822-424a-978c-027b839da61b
5/4

# ╔═╡ 1b515bc4-bceb-413e-a0c8-08087667dda5
md"""
In this notebook, the result of a block of julia code is ran and shown above it so you know what it does.
```
exit()
```
This will let you exit julia and just go back into the regular terminal.

Note that if you were to enter the above commands in the terminal, it wouldn't work.

## VSCode

VSCode is an IDE - software used for writing computer programs such as scripts (a bunch of commands given to the computer to do a task). Instead of manually typing commands into Julia, you can create a **script** which is a text file which just holds all the commands you want to enter.

Try creating a script with the following code below and running it (you do **not** need to include the words begin and end in VSCode):
"""

# ╔═╡ d4e26088-5d27-442e-8f2d-6383e6d205cc
begin
	println("Hello World!")
	println("Did you know?")
	print("1 + 1 = ")
	println(1+1)
	println("Crazy huh.")
end

# ╔═╡ dcd05070-c944-4a13-8688-514d274d9786
md"""
When you run the script, each line of this script is essecentially being fed into the Julia REPL one line at a time from beginning to end.

Note that in a script, you need to use the println or print commands to get the computer to display something. Unlike in the REPL where the result of any calculation is automatically displayed for you to see.

For example, writing:
"""

# ╔═╡ f4f10279-910c-41ff-964a-d0f548dd97f8
1+1

# ╔═╡ dfa2a022-e066-4251-8742-6bc6814c04e5
md"""
in a script and pressing run, will get the computer to display nothing. Try it.
"""

# ╔═╡ 71ef02f6-44d1-4842-82ec-00698f810f24
md"""



## Note on running:
There are multiple ways to run a Julia script in VSCode and the Terminal.

The simpliest way is to hit the play button at the top of VSCode - however for some reason this doesn't work when you write a script that takes in user input which you will learn in the next few notes (it's a known bug which the VSCode extension developers determined too costly to fix).

Another way is tell the computer directly to run the script via the terminal. Run:
```
julia ./path/to/file/example.jl
```
Of course, replace the example path with the actual path of your file when you do this.

You can also tell the computer via the Julia REPL. Run:
```
include("./path/to/file/example.jl")
```
Again, replace the example path with your actual file path.
"""

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.12.3"
manifest_format = "2.0"
project_hash = "71853c6197a6a7f222db0f1978c7cb232b87c5ee"

[deps]
"""

# ╔═╡ Cell order:
# ╟─fcd7027e-db39-11f0-835b-6da0ae99d520
# ╟─76fef068-7e57-48e6-a47c-210428382009
# ╠═022046fa-2947-4d9e-ba40-d7733bfa4be2
# ╟─ae660577-f7f5-4d23-bfd1-f6c417973b51
# ╠═254223f5-962b-484f-b0e4-4f2d8095ee70
# ╟─861bf015-437d-4e35-b7a3-794bd9d77abf
# ╠═113b9585-220e-417f-b989-8be3ad35bf4d
# ╟─9972d47d-e0d3-46a8-b37e-92fa53e6df48
# ╠═2597655e-cc3f-4667-ab6d-f8a933164f57
# ╟─07ccb91c-f290-4e77-b215-5b8ff47e6492
# ╠═88da173f-9ddb-4ed6-8f71-aae53ca2d316
# ╟─e04fa855-5ef5-4870-9181-8d5896589836
# ╠═cfffff4b-2822-424a-978c-027b839da61b
# ╟─1b515bc4-bceb-413e-a0c8-08087667dda5
# ╠═d4e26088-5d27-442e-8f2d-6383e6d205cc
# ╟─dcd05070-c944-4a13-8688-514d274d9786
# ╠═f4f10279-910c-41ff-964a-d0f548dd97f8
# ╟─dfa2a022-e066-4251-8742-6bc6814c04e5
# ╟─71ef02f6-44d1-4842-82ec-00698f810f24
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
