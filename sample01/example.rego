package example

rule01 {
	input.x < input.y
}

rule02 = "foobar" {
	input.x < input.y
}

rule03 = x {
	x := input.x
	x < input.y
}
