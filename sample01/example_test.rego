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
