### A Pluto.jl notebook ###
# v0.20.21

using Markdown
using InteractiveUtils

# ╔═╡ 18edc42c-ddc0-11f0-a891-03524c20e8c7
md"""
# Selection

So far, we have written scripts where every line of code is executed by the computer. Sometimes we want code to be executed only in some cases. The process by which a computer selects which bits of code to run and which to ignore is called selection.

Below is a script that calculates the energy of a photon and will say if it is high enough to cause the emission of a photoelectron some metal.
"""

# ╔═╡ 8ac37902-b575-43c1-aeba-2332c461fbfa
frequency = 1.2*10^15

# ╔═╡ 6ef93e96-7741-4b82-80ba-82cbf9f4f690
energy = 4.1*10^-15 * frequency

# ╔═╡ 2356356e-9584-4163-b8cf-79da99121ad5
begin
	println("Photon energy (in eV): ")
	println(energy)
end

# ╔═╡ 24b4f2d3-0f02-4d9e-9b38-cd8b7ceab8ee
if energy > 3
	exceeding = energy - 3
	println("Photoelectron emitted with maximum kinetic energy (in eV): ")
	println(exceeding)
end

# ╔═╡ 1d18c7f3-0727-430c-bbfb-8c148a133efc
md"""
if you change the frequency above so that the energy is lower than 3, then the program will not say that a photoelectron is emitted (try it).

The keyword `if` says that all the code after it will be executed only if it recieves a `true` up until the `end` keyword. 
"""

# ╔═╡ 970a6550-d5b4-4050-bbc7-e3ead8f743ca
begin
	if true
		println("I will say this only if the above is true")
	end
	println("This is after the end so I will always say this")
end

# ╔═╡ ff11dfc5-6003-4d7e-9abf-b1697de39d89
md"""
What do you think will happen if you replaced `true` with `false` in the above script. Make a guess and then try in VSCode.

Sometimes you want one bit of code to run if a condition is satified and another bit of code to run if it isn't. You can do that with the `else` keyword.
"""

# ╔═╡ 741d9f05-d1b7-4233-9d34-4d753a1b7e31
marks = 30

# ╔═╡ 68412476-aa74-4df8-bec2-6e15c8ee5c03
if marks > 40
	println("PASSED")
else
	println("FAILED")
end

# ╔═╡ 132ce6e0-919b-43cb-8e5b-00afe34a58a3
md"""
Note that the `end` comes after the `else` instead of the `if`. This is because the `else` is tied to the `if`. If the code in the `if` doesn't run then the code in the `else` will and vice versa.

You may also want multiple different condition for which only one is satisfied. You can do that with an `elseif` which is like a combination of an `if` and `else`.
"""

# ╔═╡ d54223c4-1e82-44c4-8a6a-d5b17884b9db
if marks > 90
	println("A*")
elseif marks > 70
	println("A")
elseif marks >60
	println("B")
elseif marks>40
	println("C")
else
	println("F")
end

# ╔═╡ 768f974a-5f74-42d5-8830-45a6d24c9321
md"""
Try changing `marks` to see what happens.
"""

# ╔═╡ 5e2bdb38-e66f-4419-9883-2e85efab735e
md"""
Note that the condition is only evalulated once. Try to guess what happens in the following script before looking at the answer. Note that the condition (`score > 10`) is true if and only if the score is bigger than 10, however inside the `if` we change the score to a 0 which is less than `10`. Does that mean the code in the `else` should be executed?
"""

# ╔═╡ a0c8e0b4-1edc-4929-82bf-8a059e7d1b61
begin
	score = 11
	if score > 10
		score = 0
	else
		score = 10
	end
	println(score)
end

# ╔═╡ 474535f2-850f-43f8-a621-2e7367e3b6ba
md"""
## Mini project

Researcher's looking at forests form the hypothesis that when wildfire occurs, there is an explosion in the fireweed population.
They randomly pick a forest on Earth and note down if there is a wildfire in the last few years, and if there has been an explosion in the fireweed population in the last few years. They store these in two variables as below:  
"""

# ╔═╡ 62cadcf8-294d-4edc-be07-a9526bf07ff8
recentWildfire = true

# ╔═╡ 6479cb9f-7e0d-4786-8e85-01fa91a9c190
recentFireweedExplosion = true

# ╔═╡ 38804e68-9c51-4811-b853-62423c379f72
md"""
Write a script that says if the given forest:

- Agrees with their hypothesis (that a wildfire has caused a fireweed explosion)
- Disproves their hypothesis (that a wildfire has occured but there was no fireweed explosion)
- Or provides no information on the hypothesis (that a wildfire has not occured)
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
# ╟─18edc42c-ddc0-11f0-a891-03524c20e8c7
# ╠═8ac37902-b575-43c1-aeba-2332c461fbfa
# ╠═6ef93e96-7741-4b82-80ba-82cbf9f4f690
# ╠═2356356e-9584-4163-b8cf-79da99121ad5
# ╠═24b4f2d3-0f02-4d9e-9b38-cd8b7ceab8ee
# ╟─1d18c7f3-0727-430c-bbfb-8c148a133efc
# ╠═970a6550-d5b4-4050-bbc7-e3ead8f743ca
# ╟─ff11dfc5-6003-4d7e-9abf-b1697de39d89
# ╠═741d9f05-d1b7-4233-9d34-4d753a1b7e31
# ╠═68412476-aa74-4df8-bec2-6e15c8ee5c03
# ╟─132ce6e0-919b-43cb-8e5b-00afe34a58a3
# ╠═d54223c4-1e82-44c4-8a6a-d5b17884b9db
# ╟─768f974a-5f74-42d5-8830-45a6d24c9321
# ╟─5e2bdb38-e66f-4419-9883-2e85efab735e
# ╠═a0c8e0b4-1edc-4929-82bf-8a059e7d1b61
# ╟─474535f2-850f-43f8-a621-2e7367e3b6ba
# ╠═62cadcf8-294d-4edc-be07-a9526bf07ff8
# ╠═6479cb9f-7e0d-4786-8e85-01fa91a9c190
# ╟─38804e68-9c51-4811-b853-62423c379f72
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
