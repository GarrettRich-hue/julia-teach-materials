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

# ╔═╡ 894cdc09-8346-4a1c-b054-99c6a93e2104
md"""
# Warm up (Optional)

Here's a project for you to do in VSCode. I collect sonic and kirby figurines. Lately I've been needing a way to keep track of them all. I have also noticed I have way more kirby than sonic figures and I want to make it 50/50. So I am planning that I will always buy figures of the type I have less of. Here are two variables which hold the numbers of figures of each type. 
"""

# ╔═╡ 03e8207a-93cb-4d68-b51b-674f1e41ec19
sonic = 3

# ╔═╡ a63c99b6-9528-44c4-8bb8-6b0d248d093e
kirby = 7

# ╔═╡ 0a2c23d3-1153-4a08-a736-11f86df06785
md"""
Please write a script which use those variables to tell me my total number of figures and whether I should or should not buy more kirby figures. A true or false answer would be perfect for the latter.

The script should work even when I change the value of the variables. Thank you.
"""

# ╔═╡ 1fefc71b-ea7b-48e0-baf7-a55f4fa24ff9
md"""
# Time

Computers keep track of time by counting the number of seconds since the start of January 1st 1970. The number is called the Unix Timestamp. I have found an old broken computer and found the timestamp of when it broke. I stored it in the variable below for you:
"""

# ╔═╡ da8d6923-09e1-4e89-96bf-cd83e9f495a1
n = 6032

# ╔═╡ d671a87b-7927-4642-abfc-163f0764396e
md"""
## Part A

Write a script which will use the variable to tell me how long ago the beginning of 1970 was in minutes and seconds. Which is a little easier to understand than just seconds.
"""

# ╔═╡ 4d300074-0508-44c7-add5-90fb843f27c9
md"""
## Part B
Improve your script so it tell me how long ago it was in days, hours, minutes, seconds. Please use the 24 hour day.
"""

# ╔═╡ 0ba676fb-5a35-486a-8fba-1d0d73b6fc26
md"""
## Part C (Optional)
Improve your script so it tells me how long ago it was in years, days, hours, minutes and seconds. Please take into account leap years. You may assume that (within the lifetime of the computer), we have a leap year whenever the year is divisble by 4. 
"""

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

# ╔═╡ cf6967a6-539d-4ec8-b34e-ebdb7e88337e
md"""
# War (Optional)
This question is based on a true story.

## Part A

You and some of your fellow soldiers are trapped in a cave by Roman soldiers. Instead of surrending, everyone chose to die by ceremonial suicide. Everyone except you. 

1. There are between 32 and 63 soldiers (including you) in the cave.
2. Everyone sits in a circle, facing inward. The chairs are labeled: 1,2,3,etc. going clockwise.
3. Going clockwise, every person alive stabs the closest alive person to their left. And returns to their origianl seat.
4. This keeps going, always going clockwise, until all but one person is alive. 

The seat in which the last alive person sits in is called the safe seat. Below you are given a variable of the total number of soldiers in the cave. Write a script which will tell you the safe seat.
"""

# ╔═╡ 0e2ef0a7-8dca-4cdd-a162-88ce8d16b7b8
soldiers = 40

# ╔═╡ 944f609a-79c6-44a9-bebe-5dd74382b941
md"""
## Part B

Modify your script so that it also works if the number of soldiers is between 1 and 63.

### Useful fact
true and false act like the numbers 1 and 0 when you do arithmetic. For example:
"""

# ╔═╡ aa1eec6e-4e07-4546-862f-4608fee2dfae
true + true

# ╔═╡ 547f7d5f-aa8e-408e-9dfd-23c09f1bd0d7
true * 10

# ╔═╡ a858768a-07e2-4dd5-b6e5-cde55aa935e1
false * 10

# ╔═╡ 99bd6629-e0cb-45b4-b73a-1080beef1068
true == 1

# ╔═╡ afdfb0dc-320b-4d82-baea-d14feaebdef4
false == 0

# ╔═╡ 8013f00e-9fa5-458d-bb5b-2cdf93f50caa
md"""
# SOLUTIONS (SPOILERS)
"""

# ╔═╡ 4736d3b6-3096-488f-abad-a3b1cd934210
md"""
## War

### Part A
#### Method 1 - simulate deaths
"""

# ╔═╡ 3b2e5366-0312-4ca6-befb-f53643d775e1
begin
	safeSeat = 1
	alive = soldiers

	safeSeat = safeSeat + (alive % 2) * 2
	alive = alive ÷ 2

	safeSeat = safeSeat + (alive % 2) * 4
	alive = alive ÷ 2

	safeSeat = safeSeat + (alive % 2) * 8
	alive = alive ÷ 2

	safeSeat = safeSeat + (alive % 2) * 16
	alive = alive ÷ 2

	println("safe seat: $safeSeat")
end

# ╔═╡ 7f7b0683-d207-466d-a098-f4b6fa425d78
md"""
#### Method 2 - notice pattern
"""

# ╔═╡ fc4c5005-59d2-4c33-a020-3071bb63496f
begin
	print("safe seat: ")
	println((soldiers-32)*2 + 1)
end

# ╔═╡ ee8d77fd-6c9c-4a9f-bcca-c20268b1c7c8
md"""
### Part B
#### Method 1 - simulate deaths
"""

# ╔═╡ 5f8665ba-2dfa-4f21-bfe7-4e2295fe5eb8
begin
	safeSeatB = 1
	aliveB = soldiers

	safeSeatB = safeSeatB + (aliveB>1)*(aliveB % 2) * 2
	aliveB = aliveB ÷ 2

	safeSeatB = safeSeatB + (aliveB>1)*(aliveB % 2) * 4
	aliveB = aliveB ÷ 2

	safeSeatB = safeSeatB + (aliveB>1)*(aliveB % 2) * 8
	aliveB = aliveB ÷ 2

	safeSeatB = safeSeatB + (aliveB>1)*(aliveB % 2) * 16
	aliveB = aliveB ÷ 2

	println("safe seat: $safeSeatB")
end

# ╔═╡ 0a7c2111-6f41-46fd-a504-40d24d100757
md"""
#### Method 2 - notice pattern (and cheat a little by reading further ahead)
"""

# ╔═╡ 4e4ecd8d-02b5-4897-93d9-cb046ae60770
begin
	a, l = frexp(Float64(soldiers))
	l = l-1
	print("safe seat: ")
	println((soldiers - 2^l)*2+1)
end

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
# ╟─894cdc09-8346-4a1c-b054-99c6a93e2104
# ╠═03e8207a-93cb-4d68-b51b-674f1e41ec19
# ╠═a63c99b6-9528-44c4-8bb8-6b0d248d093e
# ╟─0a2c23d3-1153-4a08-a736-11f86df06785
# ╟─1fefc71b-ea7b-48e0-baf7-a55f4fa24ff9
# ╠═da8d6923-09e1-4e89-96bf-cd83e9f495a1
# ╟─d671a87b-7927-4642-abfc-163f0764396e
# ╟─4d300074-0508-44c7-add5-90fb843f27c9
# ╟─0ba676fb-5a35-486a-8fba-1d0d73b6fc26
# ╟─50b327e4-ddbb-11f0-85fe-3b50eb3bfd9d
# ╠═7f6ef174-e3c3-4af1-9528-48d0461ef0fa
# ╠═22e58498-41cf-4894-bcec-ec840e950504
# ╠═7a389dbb-ad91-4b0d-ae87-23b02a6eb44c
# ╠═da35e9cb-b97d-4b1b-9ebc-a41c59e8359a
# ╟─dd5932cd-315b-4650-8735-079ab55b7da1
# ╟─320a78e6-ab3b-42bf-b8eb-4b3b47a50c4d
# ╟─cf6967a6-539d-4ec8-b34e-ebdb7e88337e
# ╠═0e2ef0a7-8dca-4cdd-a162-88ce8d16b7b8
# ╟─944f609a-79c6-44a9-bebe-5dd74382b941
# ╠═aa1eec6e-4e07-4546-862f-4608fee2dfae
# ╠═547f7d5f-aa8e-408e-9dfd-23c09f1bd0d7
# ╠═a858768a-07e2-4dd5-b6e5-cde55aa935e1
# ╠═99bd6629-e0cb-45b4-b73a-1080beef1068
# ╠═afdfb0dc-320b-4d82-baea-d14feaebdef4
# ╟─8013f00e-9fa5-458d-bb5b-2cdf93f50caa
# ╟─4736d3b6-3096-488f-abad-a3b1cd934210
# ╠═3b2e5366-0312-4ca6-befb-f53643d775e1
# ╟─7f7b0683-d207-466d-a098-f4b6fa425d78
# ╠═fc4c5005-59d2-4c33-a020-3071bb63496f
# ╟─ee8d77fd-6c9c-4a9f-bcca-c20268b1c7c8
# ╠═5f8665ba-2dfa-4f21-bfe7-4e2295fe5eb8
# ╟─0a7c2111-6f41-46fd-a504-40d24d100757
# ╠═4e4ecd8d-02b5-4897-93d9-cb046ae60770
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
