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

test_rule06 {
	not rule06 with input as {}

	rule06 with input as {
		"a": 100,
		"b": 200,
	}

	not rule06 with input as {
		"a": 300,
		"b": 200,
	}
}

rule07verify(answer) {
	rule07.db == answer
}

test_rule07 {
	rule07verify("db:latest") with input as {"containers": {
		"app": {"image": "app:18.04"},
		"db": {"image": "db:latest"},
	}}

	not rule07verify("db:latest") with input as {"containers": {
		"app": {"image": "app:18.04"},
		"db": {"image": "postgres:latest"},
	}}
}

rule08verify(answer) {
	count(rule08) == answer
}

test_rule08 {
	rule08verify(2) with input as {"numbers": [1, 2, 3, 4, 5]}
	not rule08verify(2) with input as {"numbers": [1, 2, 3, 4, 5, 6]}
}

test_rule09 {
	rule09 with input as {"numbers": [1, 2, 3, 4, 5]}
	rule09 with input as {"numbers": [1, 2, 3, 4, -5]}
	not rule09 with input as {"numbers": [-1, -2, -3, -4, -5]}
	rule10 with input as {"numbers": [-1, -2, -3, -4, -5]}
}

test_rule11 {
	rule11 with input as {"numbers": [1, 2, 3, 4, 5]}
	not rule11 with input as {"numbers": [1, 2, 3, 4, -5]}
}

rule12verify(answer) {
  count(rule12) == answer
}

test_rule12 {
	rule12verify(2) with input as {
		"images": [
			"docker.io/nginx",
			"quay.io/ubuntu",
			"localhost/nginx",
		],
		"repos": [
			"docker.io",
			"quay.io",
		],
	}

	not rule12verify(3) with input as {
		"images": [
			"docker.io/nginx",
			"quay.io/ubuntu",
			"localhost/nginx",
		],
		"repos": [
			"docker.io",
			"quay.io",
		],
	}
}
