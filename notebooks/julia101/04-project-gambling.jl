### A Pluto.jl notebook ###
# v0.20.21

using Markdown
using InteractiveUtils

# ╔═╡ 843655f8-3cfd-402e-ae62-7a611ecae305
md"""
## Pretty printing
Before you start the project, here's something you might find helpful. You can print out data with a helpful label like so:
"""

# ╔═╡ 02eca20d-94d7-4dc4-9fc3-af693a0424aa
begin
	myPreciousNumber = 69
	print("This is a number: ")
	println(myPreciousNumber)
end

# ╔═╡ 37963d42-9f06-4532-9474-ac835afa32ae
md"""
Note you have to use print without the ln so it doesn't create a new line.
"""

# ╔═╡ fe046471-e29a-4cf9-ac34-f407cf008c73
begin
	println("This should be a number: ")
	println(myPreciousNumber)
end

# ╔═╡ a61e7365-c5a5-4564-93b0-f735a2d2523e
md"""
You can also use contanation if you are careful to convert the data to a string:
"""

# ╔═╡ e23b77e0-28a3-49db-9fbf-3dfc82e5502d
println("A number but is now a string?? : "* string(myPreciousNumber))

# ╔═╡ 0bf40234-4e23-423e-b85e-22edcfefc325
md"""
Julia also has string interpolation to make your life easier.
"""

# ╔═╡ d984e244-9312-4d6e-8fe1-657b42c14055
println("The number in me: $myPreciousNumber")

# ╔═╡ 50b327e4-ddbb-11f0-85fe-3b50eb3bfd9d
md"""
# LETS GO GAMBLING

Here's a project for you to do in VSCode. I keep finding a bunch of lotteries online and I want to know if I should play in them or not. Whenever I find a lottery online, I find the prize money (in pounds), the cost of playing (in pounds), the probability of winning (as a percentage) and how long the game runs for (in days). I store each of these in a variable as below:
"""

# ╔═╡ 7f6ef174-e3c3-4af1-9528-48d0461ef0fa
prize = 5000

# ╔═╡ 22e58498-41cf-4894-bcec-ec840e950504
cost = 5

# ╔═╡ 7a389dbb-ad91-4b0d-ae87-23b02a6eb44c
probability = 0.5

# ╔═╡ da35e9cb-b97d-4b1b-9ebc-a41c59e8359a
gametime = 7

# ╔═╡ dd5932cd-315b-4650-8735-079ab55b7da1
md"""
This comes from a local lottery that runs weekly in my hometown. It's £5 per ticket with the jackpot being £5000. After some sleuthing I found the probability to be 0.5%.
"""

# ╔═╡ 320a78e6-ab3b-42bf-b8eb-4b3b47a50c4d
md"""
I want to know my expected gain for playing the game one time as well as how much I can expect to make over a non-leap year (365 day period) if I were to play in the lottery every chance I get (also assuming none of the numbers change from game to game). Can you write a script to calculate this for me? If you can print the information to the console for me with some labels that would be great. Also I'm dumb and need to be told directly if a certain lottery would actually make me money or not. If you could just print a boolean (true for make money, false for lose money) then that would work.

You can use this formula for guidence:
```math
\text{expected gain for one game} = (\text{prize} \times \frac{\text{probability}}{100\%} - \text{cost} \times \frac{100\% - \text{probability}}{100\%} )
```
```math
\text{(A negative gain means that we expect to \textbf{lose} money)}
```
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
# ╟─843655f8-3cfd-402e-ae62-7a611ecae305
# ╠═02eca20d-94d7-4dc4-9fc3-af693a0424aa
# ╟─37963d42-9f06-4532-9474-ac835afa32ae
# ╠═fe046471-e29a-4cf9-ac34-f407cf008c73
# ╟─a61e7365-c5a5-4564-93b0-f735a2d2523e
# ╠═e23b77e0-28a3-49db-9fbf-3dfc82e5502d
# ╟─0bf40234-4e23-423e-b85e-22edcfefc325
# ╠═d984e244-9312-4d6e-8fe1-657b42c14055
# ╟─50b327e4-ddbb-11f0-85fe-3b50eb3bfd9d
# ╠═7f6ef174-e3c3-4af1-9528-48d0461ef0fa
# ╠═22e58498-41cf-4894-bcec-ec840e950504
# ╠═7a389dbb-ad91-4b0d-ae87-23b02a6eb44c
# ╠═da35e9cb-b97d-4b1b-9ebc-a41c59e8359a
# ╟─dd5932cd-315b-4650-8735-079ab55b7da1
# ╟─320a78e6-ab3b-42bf-b8eb-4b3b47a50c4d
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
