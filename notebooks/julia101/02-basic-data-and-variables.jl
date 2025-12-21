### A Pluto.jl notebook ###
# v0.20.21

using Markdown
using InteractiveUtils

# ╔═╡ 64516244-dd9c-11f0-917c-4f63919f71fd
md"""
# Data and Types
For this notebook, I'd advise testing code in the Julia repl rather than VSCode - it's slightly easier.

Like how a woodchipper can be described as a **machine** that processes **wood**, a computer can be thought as a **machine** that processes **data**.

Data comes in the form of many different **types**

## Integers
Computers can store whole numbers called "Integers" (the int- part comes from latin meaning "whole") such as:
"""

# ╔═╡ 145b8af4-755b-456a-b554-11b92e1bbc9a
1

# ╔═╡ e8fd56fe-f448-4824-9a2d-6f1686c8b922
2

# ╔═╡ 0d08dd1e-74d3-498a-85fc-4aee36176b5e
-3

# ╔═╡ d3507f11-1846-4808-9838-852597a8f087
10

# ╔═╡ cad1fde5-ad87-45cd-9112-64bdb9746cc6
-5

# ╔═╡ 5d92fcfe-c21b-455f-9d5f-e3a55a5918ce
0

# ╔═╡ c4ad9236-9257-4132-a7c4-8e732570304f
md"""
You can ask Julia what type of some data use by using `typeof`
"""

# ╔═╡ a82493d3-7b26-45cc-91ce-1bc46c96562a
typeof(0)

# ╔═╡ 665aff55-eee4-46cf-8969-2f051d4cea06
md"""
It will use an abbreviated name (e.g. Int) which may include some more detail (e.g. it uses 64 bits) but please don't worry about those fine details right now.

## Booleans
Computers can also answer logic questions, they respond with an answer "true" or "false" when given one. "true" and "false" is data too, they are called Booleans (named after the logician George Boole).

For example,
"""

# ╔═╡ 0fc0518c-4fb6-46db-b45e-1ba29e8f19fd
true

# ╔═╡ 209af8c2-99f1-418b-b324-9e458b97542f
false

# ╔═╡ 2b31d2c8-9798-4a06-b1e3-79266ec64533
typeof(true)

# ╔═╡ 1d577133-79e4-45c6-a37f-561c63c0d378
md"""
## Strings
Computers can also work with text data called Strings. 
For example,
"""

# ╔═╡ 90911f0f-f606-4bfe-a177-337f8fd75ae9
"Hello"

# ╔═╡ 99d965be-0e56-4846-9e5e-6c63d033c992
"what's up my fellow home slices."

# ╔═╡ 6720288a-1226-4195-8df8-459171d47122
""

# ╔═╡ 0987ad1e-ad19-4483-a00b-8684b74b4b2d
typeof("hi")

# ╔═╡ 50c2ef08-f081-409e-bdb3-2b74dbd76574
md"""
## Floating point numbers
Computers can represent approximations to decimal numbers as well called Floats (a techincal term based on how computers are engineered to work with numbers). For example:
"""

# ╔═╡ 08f796fc-0e9c-4c6d-ab3d-e11046603d55
0.5

# ╔═╡ f0261df7-862e-4082-9e5c-013e16c50ea4
0.75

# ╔═╡ a4177926-2da8-4322-9d3a-1eb3955b9eed
typeof(0.75)

# ╔═╡ 61f5c33a-b599-46a5-a952-abbeb034aaf0
md"""
Fun fact: they can respresent infinity as well. And the perculiar number NaN which is short for "not a number" (it's my favourite number). But I hope you never have to use them because they're weird...
"""

# ╔═╡ 2a021fd2-1a20-452c-b552-7ae6b5e87acb
Inf

# ╔═╡ 2b6b6e48-60fa-41c3-b43f-9508da94201c
NaN

# ╔═╡ 6023c66a-e456-4242-92ff-0cf5b69f80a3
typeof(NaN)

# ╔═╡ 12a3fbfb-97dd-4a48-99ab-a8a24cd10c8c
typeof(Inf)

# ╔═╡ a6f89720-8100-402f-8427-6179bb6ccdd2
md"""
## Data Literals

Whenever we are talking about a very specific piece of unnamed data such as any of the above, we can just write it down in our code and Julia will understand what we mean. However, when we write it down it must follow a specific syntax.

For text data (Strings) we must put in speach marks (as above), not doing so will cause Julia to throw a fit as it doesn't know what it means:
"""

# ╔═╡ 441ec6c4-d7ba-44dd-82cd-ebefe3a1f6c8
Hi

# ╔═╡ 630cf211-f73a-4ccd-897a-602919baef5c
md"""
For integers, we just type the number as you'd expect. Don't use commas, don't use spaces, don't use a fullstop. If you do, Julia might not understand or think you are talking about something else. Here's what happens when you mess up writing 10,200.
"""

# ╔═╡ f6966f9f-30f4-4bd8-b0bf-7980ec5aa881
10 200

# ╔═╡ 52b6d4c7-224a-4693-bbff-fcd185fdc1a5
typeof(10.200)

# ╔═╡ f74787ee-6339-4dd4-a39b-795b4043cf13
10,200

# ╔═╡ b6d85a8b-b400-46e3-a77e-ea2c853f63eb
md"""
You can use an underscore if you'd like:
"""

# ╔═╡ 9f7a3002-f835-4bc0-9ba2-f071673fde54
10_200

# ╔═╡ 52b28187-4def-4ce7-9984-44d625827151
md"""
Or not...
"""

# ╔═╡ 7308cf35-e0e1-4da4-8b6d-023395349972
10200

# ╔═╡ 8735dfa5-cf69-452c-b8b0-0a97ac37f49d
md"""
For booleans, use lowercase. Remember that although we write them down as a word THEY ARE **NOT** STRINGS. So you should **not** use speach marks.
"""

# ╔═╡ 92935e17-ba74-4217-b5a8-62327278897c
typeof("false")

# ╔═╡ 8fa83603-178c-4cfb-a045-168ea664c7a9
TRUE

# ╔═╡ 4ed0e910-f38a-45ca-90dd-4144797db8bf
md"""
Floating point numbers follow a similar pattern to the integers except they must have a decimal point somewhere.
"""

# ╔═╡ 80b86bcc-2a18-48cb-8292-70169be068b2
1.2

# ╔═╡ 0475c260-1f1c-43f4-9d61-9d747622d657
3.

# ╔═╡ 24dbf57c-c02f-45b8-87d0-81afbdb18ca5
typeof(1.0)

# ╔═╡ 9a53f3a6-a895-4cbc-90ef-c5bba41c4181
md"""
Note that Julia considers 1.0 to be a float and 1 to be an integer. They are different.
"""

# ╔═╡ dfc77ffa-70bd-4f92-ac6c-21cf5b9570a7
md"""
# Data Variables

You can also put data into boxes called variables. For example, the following puts the integer 100 into the variable called alfred:
"""

# ╔═╡ ff89c8dc-ade6-4a53-9265-7430be2deea8
alfred = 100

# ╔═╡ 706f52dc-43f4-40e2-a543-c6bb3147ae57
md"""
We can then use the variable alfred in our code to refer to 100. For example, the following will print 100:
"""

# ╔═╡ c79cfc24-58bd-42e1-8493-cde540e18b43
println(alfred)

# ╔═╡ 2d11fe35-3596-4036-bb36-56186f1afe6d
md"""
We can also replace the data which put into a variable later if we want it to be something else. For example:
"""

# ╔═╡ 3eea18d4-e333-45e0-9559-8d8a9919f9af
begin
	bob = 20
	println(bob)
	bob = 50
	println(bob)
end

# ╔═╡ 242a5f14-2d8c-4d9f-8c14-bf101c6ac554
md"""
From now on, whenever I talk about an "Integer" I may refer to say a literal value like 10 or to a variable which is storing an integer (this sometimes causes confusion when speaking about code for people new to programming so I thought I might as well clarify). And of course I will do the same for all the other data types too. Even Julia agrees bob is an integer:
"""

# ╔═╡ 1e9bbcf5-f8b0-4193-b636-74dcaa487fd6
typeof(bob)

# ╔═╡ 9c3989c8-a589-478a-bf85-070e5b502bad
md"""
Julia is what's called a "dynamic language" meaning that variables can change type when reassigned and you don't need to declare what type a variable is (unless you want to!). For example, here you can see the variable whoops! can change types:
"""

# ╔═╡ 4af155ea-f039-40e4-b1fb-eb6661a38493
begin
	whoops! = "false"
	println(typeof(whoops!))
	whoops! = false
	println(typeof(whoops!))
end

# ╔═╡ da61b46d-ff1e-439b-a4d0-aad594bb2f46
md"""
You can declare the type you want a variable to be if you want and Julia will make sure it will be. Later on we will see that these "Type Declarations" are useful for writing good code.
"""

# ╔═╡ c3ee0b02-1f23-4514-91d8-8a2b3903bda0
begin
	thisIsText :: String = "Hi"
	println(thisIsText)
	thisIsText = "Bye"
	println(thisIsText)
	thisIsText = 2
	println(thisIsText)
end

# ╔═╡ e8a08eae-88cb-4559-84d9-ff40789fa832
md"""
# A quick test for you
Try making a variable called True which stores the boolean false and a variable False which stores some text that reads true. Ask Julia what the type of each variable is to make sure it is correct.

Solution:
"""

# ╔═╡ 4b03e8dd-743d-4015-9c03-87f1a10930d6
True = false

# ╔═╡ 2f3f1730-2cf0-4f49-9036-a2491dd42308
False = "true"

# ╔═╡ 7e7da7bc-0457-47ec-9d8b-e2fb5c4453da
typeof(True)

# ╔═╡ 20633d12-62a1-420a-8753-37c695c81fdb
typeof(False)

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
# ╟─64516244-dd9c-11f0-917c-4f63919f71fd
# ╠═145b8af4-755b-456a-b554-11b92e1bbc9a
# ╠═e8fd56fe-f448-4824-9a2d-6f1686c8b922
# ╠═0d08dd1e-74d3-498a-85fc-4aee36176b5e
# ╠═d3507f11-1846-4808-9838-852597a8f087
# ╠═cad1fde5-ad87-45cd-9112-64bdb9746cc6
# ╠═5d92fcfe-c21b-455f-9d5f-e3a55a5918ce
# ╟─c4ad9236-9257-4132-a7c4-8e732570304f
# ╠═a82493d3-7b26-45cc-91ce-1bc46c96562a
# ╟─665aff55-eee4-46cf-8969-2f051d4cea06
# ╠═0fc0518c-4fb6-46db-b45e-1ba29e8f19fd
# ╠═209af8c2-99f1-418b-b324-9e458b97542f
# ╠═2b31d2c8-9798-4a06-b1e3-79266ec64533
# ╟─1d577133-79e4-45c6-a37f-561c63c0d378
# ╠═90911f0f-f606-4bfe-a177-337f8fd75ae9
# ╠═99d965be-0e56-4846-9e5e-6c63d033c992
# ╠═6720288a-1226-4195-8df8-459171d47122
# ╠═0987ad1e-ad19-4483-a00b-8684b74b4b2d
# ╟─50c2ef08-f081-409e-bdb3-2b74dbd76574
# ╠═08f796fc-0e9c-4c6d-ab3d-e11046603d55
# ╠═f0261df7-862e-4082-9e5c-013e16c50ea4
# ╠═a4177926-2da8-4322-9d3a-1eb3955b9eed
# ╟─61f5c33a-b599-46a5-a952-abbeb034aaf0
# ╠═2a021fd2-1a20-452c-b552-7ae6b5e87acb
# ╠═2b6b6e48-60fa-41c3-b43f-9508da94201c
# ╠═6023c66a-e456-4242-92ff-0cf5b69f80a3
# ╠═12a3fbfb-97dd-4a48-99ab-a8a24cd10c8c
# ╟─a6f89720-8100-402f-8427-6179bb6ccdd2
# ╠═441ec6c4-d7ba-44dd-82cd-ebefe3a1f6c8
# ╟─630cf211-f73a-4ccd-897a-602919baef5c
# ╠═f6966f9f-30f4-4bd8-b0bf-7980ec5aa881
# ╠═52b6d4c7-224a-4693-bbff-fcd185fdc1a5
# ╠═f74787ee-6339-4dd4-a39b-795b4043cf13
# ╟─b6d85a8b-b400-46e3-a77e-ea2c853f63eb
# ╠═9f7a3002-f835-4bc0-9ba2-f071673fde54
# ╟─52b28187-4def-4ce7-9984-44d625827151
# ╠═7308cf35-e0e1-4da4-8b6d-023395349972
# ╟─8735dfa5-cf69-452c-b8b0-0a97ac37f49d
# ╠═92935e17-ba74-4217-b5a8-62327278897c
# ╠═8fa83603-178c-4cfb-a045-168ea664c7a9
# ╟─4ed0e910-f38a-45ca-90dd-4144797db8bf
# ╠═80b86bcc-2a18-48cb-8292-70169be068b2
# ╠═0475c260-1f1c-43f4-9d61-9d747622d657
# ╠═24dbf57c-c02f-45b8-87d0-81afbdb18ca5
# ╟─9a53f3a6-a895-4cbc-90ef-c5bba41c4181
# ╟─dfc77ffa-70bd-4f92-ac6c-21cf5b9570a7
# ╠═ff89c8dc-ade6-4a53-9265-7430be2deea8
# ╟─706f52dc-43f4-40e2-a543-c6bb3147ae57
# ╠═c79cfc24-58bd-42e1-8493-cde540e18b43
# ╟─2d11fe35-3596-4036-bb36-56186f1afe6d
# ╠═3eea18d4-e333-45e0-9559-8d8a9919f9af
# ╟─242a5f14-2d8c-4d9f-8c14-bf101c6ac554
# ╠═1e9bbcf5-f8b0-4193-b636-74dcaa487fd6
# ╟─9c3989c8-a589-478a-bf85-070e5b502bad
# ╠═4af155ea-f039-40e4-b1fb-eb6661a38493
# ╟─da61b46d-ff1e-439b-a4d0-aad594bb2f46
# ╠═c3ee0b02-1f23-4514-91d8-8a2b3903bda0
# ╠═e8a08eae-88cb-4559-84d9-ff40789fa832
# ╠═4b03e8dd-743d-4015-9c03-87f1a10930d6
# ╠═2f3f1730-2cf0-4f49-9036-a2491dd42308
# ╠═7e7da7bc-0457-47ec-9d8b-e2fb5c4453da
# ╠═20633d12-62a1-420a-8753-37c695c81fdb
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
