### A Pluto.jl notebook ###
# v0.20.21

using Markdown
using InteractiveUtils

# ╔═╡ 3a7b39f6-ddb3-11f0-91cc-097fcdb4662b
md"""
# Operators
Computers can do various processes on data as well. They can do arithmetic, they can do comparisions, they can do logic. Here's how you can tell Julia to do that.

## Arithmetic
You can simply use +, - symbols to do addition and subtraction on integers, as you saw in 01:
"""

# ╔═╡ b7d16bf2-40d1-4eed-998f-2131ebd2499c
a = 1 + 1

# ╔═╡ 3a60503a-4489-43a1-adbe-d105528df07c
b = 3 - 10

# ╔═╡ ac541a72-f232-4f00-ac1c-950917428f16
c = a - b

# ╔═╡ 41cb95e8-2aa2-4b9e-a418-aa4dc0757cd8
md"""
The instructions + and - that tell the computer to process some data are called operators.
"""

# ╔═╡ dc4d562d-0603-41d1-b111-548323c32e97
md"""
You can use * for multiplication. Julia follows BIDMAS i.e. it will do multiplication before addition or subtraction.
"""

# ╔═╡ bba9ab4a-68d8-4159-8720-ec7b11ba7376
a*c

# ╔═╡ 169c25eb-93af-41db-a88d-5d8a73633754
d = b + a * c

# ╔═╡ df90ff50-7ff2-4a3a-9462-151683643bf6
md"""
Divison has some nuance. All of the above will keep the data type of what you put in. That is if you add some integers, you get an integer. If you add some floats you get a float. 
"""

# ╔═╡ aa15924d-48f6-454a-857a-65521b277ddf
typeof(1+1)

# ╔═╡ 5319e69c-14bc-43cf-8400-de3e338b1a64
typeof(1.0+1.0)

# ╔═╡ a0baea76-ac0e-4fa1-9e88-ea6b026afc59
md"""
You may see the problem. Dividing two integer doesn't mean you should get an integer back:
"""

# ╔═╡ e0b33eb0-705b-4e83-b9ef-d4294dfd0f32
uhoh = 11/2

# ╔═╡ 3a33f167-4a1e-4322-a3bd-829181cd0241
typeof(uhoh)

# ╔═╡ 9e245f5a-d2a5-46ef-9f78-7813622a4987
md"""
Computer scientist have come up with other kinds of division too which you should find useful. One of them is called integer division, and in Julia there are two ways to write it:
"""

# ╔═╡ 26da3650-942d-4fe2-b49f-de3d9924b919
uhhuh = div(11,2)

# ╔═╡ 2415403d-99b3-4697-ba0e-7616150634e5
ohyay = 11 ÷ 2 

# ╔═╡ 7e538360-8cba-41df-af98-3d4eff85ba3e
typeof(ohyay)

# ╔═╡ c36f7f63-234c-4cbd-91b7-0acc44222da7
md"""
To get the ÷ sign, type \div then press the tab key (above the caps lock on the keyboard). 

Integer division just remove everything after the decimal point to get it as a whole number. It is kinda like when you did division in primary school before you knew about decimal numbers. You might also remember in primary school that when you did division, you also wanted to keep track of the remainder when you did a division. Julia can find the remainder after a division to: 
"""

# ╔═╡ f40e5181-99c0-4574-ba48-95f23ab3dff7
whatleftover = 11 % 2

# ╔═╡ 69426209-51e7-4b95-ab52-252b29c1d9e8
missedsome = 19%7

# ╔═╡ b80a4296-2645-486a-9315-0fda18ee77c5
md"""
When you work with arrays, you will find that integer division and the remainder is often more useful than regular division.
"""

# ╔═╡ 09598c09-a798-4afe-81fd-3e6c50424ecc
md"""
## String operations

Just like how you can multiply integers together, you can multiply strings together too. This will just join the two strings together - this called concatenation.
"""

# ╔═╡ 6ab7e8b7-16be-4e65-9ab9-dba5ebf495a3
"left " * "right"

# ╔═╡ 36d1f166-962c-4492-affd-2bb8fc71420a
firstname = "Garrett"

# ╔═╡ b9e65bba-06bc-4150-bc6a-0608a06e47f9
lastname = "Richards"

# ╔═╡ c059e4c1-b1e8-47d8-bec9-695c92b404cc
fullname = firstname * " " * lastname

# ╔═╡ 3b81c4ff-9caa-4849-8877-3f96416367ee
md"""
But if you tried using * on an Integer and a String then Julia will get confused because it can't concatanate them or multiply them.
"""

# ╔═╡ c02c588f-8fd1-4b24-9099-cbdac1fae170
3*"hi"

# ╔═╡ ce0be6af-b141-42ea-9753-ed1543b398ac
md"""
## Comparisons
You can ask Julia compare two things to see if they are equal, greater or less than. Julia will give you a boolean as an answer. For example:
"""

# ╔═╡ 639e89eb-6bb0-444f-9774-28a167bd1155
1 < 2

# ╔═╡ 1c707df1-f1e2-4b94-ad01-7dc2d6837e33
6 < 3

# ╔═╡ 8e89d3e4-3348-4f2c-8cd6-14f7655f6413
age = 10

# ╔═╡ 7ca00c0d-f98b-429f-85fd-5f1cf0d550a0
isLegal = age >= 18

# ╔═╡ fafbb1ad-8402-4f89-82e2-5090f18816bd
ageAdult = 18

# ╔═╡ 784cf06c-0597-4f8b-be7c-072b8e74afb9
isLegalAdult = ageAdult >= 18

# ╔═╡ 6cb259c8-9b73-41c1-bd18-4f1f92a8ce1d
1 + 1 == 2

# ╔═╡ a8adebb8-1505-43e5-86c5-141feb5a33a7
somethingDefinitelyTrue = 0 == 1

# ╔═╡ 1e23527e-ec4a-426a-8d84-c26dd79eb9fe
md"""
Note that we use two equal signs when we want to compare two values and we use one equal sign to assign a value to a variable.

We can also ask if two value are different:
"""

# ╔═╡ a7121b3b-0701-4349-8ccd-f64b4c4084d0
totallyWrong = 0 != 1

# ╔═╡ 5f4faf70-d940-4155-993b-96dfe40a3d04
md"""
Note that we always put the equals sign last when writing comparisions. For example, the following do not work as you would expect:
"""

# ╔═╡ fbe88321-40fd-4cbe-bd2e-efb154cae0b7
illegalIsLegal = age => 18

# ╔═╡ f56e9adb-7ed2-4d8b-bdd5-78e9c36ccc7a
illegalTotallyWrong = 0 =! 1

# ╔═╡ 940d2721-f141-4424-a045-0496231527dd
md"""
### Mini Test
Try to figure on pen and paper what Julia will respond for each of these lines of code, as well as what data type it results in. Enter the line of code into the julia repl to check your answers. User `typeof` to check the datatype.

```
1 + 1. * 2
```

```
(11 ÷ 4 )*2
```

```
true != false
```

```
5-6 == -1
```

```
(1+1<2) != (5-6==-1)
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
# ╟─3a7b39f6-ddb3-11f0-91cc-097fcdb4662b
# ╠═b7d16bf2-40d1-4eed-998f-2131ebd2499c
# ╠═3a60503a-4489-43a1-adbe-d105528df07c
# ╠═ac541a72-f232-4f00-ac1c-950917428f16
# ╟─41cb95e8-2aa2-4b9e-a418-aa4dc0757cd8
# ╟─dc4d562d-0603-41d1-b111-548323c32e97
# ╠═bba9ab4a-68d8-4159-8720-ec7b11ba7376
# ╠═169c25eb-93af-41db-a88d-5d8a73633754
# ╟─df90ff50-7ff2-4a3a-9462-151683643bf6
# ╠═aa15924d-48f6-454a-857a-65521b277ddf
# ╠═5319e69c-14bc-43cf-8400-de3e338b1a64
# ╟─a0baea76-ac0e-4fa1-9e88-ea6b026afc59
# ╠═e0b33eb0-705b-4e83-b9ef-d4294dfd0f32
# ╠═3a33f167-4a1e-4322-a3bd-829181cd0241
# ╟─9e245f5a-d2a5-46ef-9f78-7813622a4987
# ╠═26da3650-942d-4fe2-b49f-de3d9924b919
# ╠═2415403d-99b3-4697-ba0e-7616150634e5
# ╠═7e538360-8cba-41df-af98-3d4eff85ba3e
# ╟─c36f7f63-234c-4cbd-91b7-0acc44222da7
# ╠═f40e5181-99c0-4574-ba48-95f23ab3dff7
# ╠═69426209-51e7-4b95-ab52-252b29c1d9e8
# ╟─b80a4296-2645-486a-9315-0fda18ee77c5
# ╟─09598c09-a798-4afe-81fd-3e6c50424ecc
# ╠═6ab7e8b7-16be-4e65-9ab9-dba5ebf495a3
# ╠═36d1f166-962c-4492-affd-2bb8fc71420a
# ╠═b9e65bba-06bc-4150-bc6a-0608a06e47f9
# ╠═c059e4c1-b1e8-47d8-bec9-695c92b404cc
# ╟─3b81c4ff-9caa-4849-8877-3f96416367ee
# ╠═c02c588f-8fd1-4b24-9099-cbdac1fae170
# ╟─ce0be6af-b141-42ea-9753-ed1543b398ac
# ╠═639e89eb-6bb0-444f-9774-28a167bd1155
# ╠═1c707df1-f1e2-4b94-ad01-7dc2d6837e33
# ╠═8e89d3e4-3348-4f2c-8cd6-14f7655f6413
# ╠═7ca00c0d-f98b-429f-85fd-5f1cf0d550a0
# ╠═fafbb1ad-8402-4f89-82e2-5090f18816bd
# ╠═784cf06c-0597-4f8b-be7c-072b8e74afb9
# ╠═6cb259c8-9b73-41c1-bd18-4f1f92a8ce1d
# ╠═a8adebb8-1505-43e5-86c5-141feb5a33a7
# ╟─1e23527e-ec4a-426a-8d84-c26dd79eb9fe
# ╠═a7121b3b-0701-4349-8ccd-f64b4c4084d0
# ╟─5f4faf70-d940-4155-993b-96dfe40a3d04
# ╠═fbe88321-40fd-4cbe-bd2e-efb154cae0b7
# ╠═f56e9adb-7ed2-4d8b-bdd5-78e9c36ccc7a
# ╟─940d2721-f141-4424-a045-0496231527dd
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
