package example

# return boolean
rule01 {
	input.x < input.y
}

# return const string
rule02 = "foobar" {
	input.x < input.y
}

# return single variable
rule03 = x {
	x := input.x
	x < input.y
}

# and condition
rule04 {
	input.x < input.y
	input.y < input.z
}

# or condition
rule05 {
	input.x < input.y
}

rule05 {
	input.y < input.z
}

# set default value
default rule06 = false

rule06 {
	input.a < input.b
}

rule07[key] = image {
	image := input.containers[key].image
	endswith(image, ":latest")
}
