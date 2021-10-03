package example

test_rule01 {
	rule01 with input as {
		"x": 100,
		"y": 200,
	}
}

rule02Verify {
	rule02 == "foobar"
}

test_rule02 {
	rule02Verify with input as {
		"x": 100,
		"y": 200,
	}
}

rule03Verify {
	rule03 == 100
}

test_rule03 {
	rule03Verify with input as {
		"x": 100,
		"y": 200,
	}
}

test_rule03_not_true {
	not rule03Verify with input as {
		"x": 200,
		"y": 100,
	}
}

test_rule04 {
	rule04 with input as {
		"x": 100,
		"y": 200,
		"z": 300,
	}

	not rule04 with input as {
		"x": 100,
		"y": 200,
		"z": 150,
	}
}

test_rule05 {
	rule05 with input as {
		"x": 100,
		"y": 200,
		"z": 150,
	}

	not rule05 with input as {
		"x": 300,
		"y": 200,
		"z": 100,
	}
}