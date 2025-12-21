### A Pluto.jl notebook ###
# v0.20.21

using Markdown
using InteractiveUtils

# ╔═╡ fcd7027e-db39-11f0-835b-6da0ae99d520
md"""
# Welcome!

Before continuing make sure have installed and enabled Julia, VSCode, and the Julia extension for VSCode. Also make you know how to open the terminal and VSCode.

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

After entering this you should be greated by the julia repl. Now you can enter commands written in julia. Your old commands in the terminal will not work because those commands are written in a different language (try it).

Try the following commands:
"""

# ╔═╡ 022046fa-2947-4d9e-ba40-d7733bfa4be2
println("Hi")

# ╔═╡ 254223f5-962b-484f-b0e4-4f2d8095ee70
println("Hello"); println("World")

# ╔═╡ 113b9585-220e-417f-b989-8be3ad35bf4d
1+1

# ╔═╡ 2597655e-cc3f-4667-ab6d-f8a933164f57
10 * 10

# ╔═╡ 88da173f-9ddb-4ed6-8f71-aae53ca2d316
8/4

# ╔═╡ cfffff4b-2822-424a-978c-027b839da61b
5/4

# ╔═╡ 1b515bc4-bceb-413e-a0c8-08087667dda5
md"""
In this notebook, the result of a block of julia code is ran and shown above it.
```
exit()
```
This will let you exit julia and just go back into the regular console.

Note that if you were to enter the above commands in the terminal, it wouldn't work.

## VSCode

VSCode is an IDE - software used for writing computer programs (a bunch of commands given to the computer to do a task). Instead of manually typing commands into Julia, you can create a **script**
"""

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

julia_version = "1.12.1"
manifest_format = "2.0"
project_hash = "71853c6197a6a7f222db0f1978c7cb232b87c5ee"

[deps]
"""

# ╔═╡ Cell order:
# ╟─fcd7027e-db39-11f0-835b-6da0ae99d520
# ╠═022046fa-2947-4d9e-ba40-d7733bfa4be2
# ╠═254223f5-962b-484f-b0e4-4f2d8095ee70
# ╠═113b9585-220e-417f-b989-8be3ad35bf4d
# ╠═2597655e-cc3f-4667-ab6d-f8a933164f57
# ╠═88da173f-9ddb-4ed6-8f71-aae53ca2d316
# ╠═cfffff4b-2822-424a-978c-027b839da61b
# ╠═1b515bc4-bceb-413e-a0c8-08087667dda5
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
