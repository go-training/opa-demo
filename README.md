# opa-demo

Demo Rego language

## Run testing

```sh
opa test -v .
```

run single testing rule

```sh
$ opa eval -i input.json -d example.rego "data.example.rule02"
{
  "result": [
    {
      "expressions": [
        {
          "value": "foobar",
          "text": "data.example.rule02",
          "location": {
            "row": 1,
            "col": 1
          }
        }
      ]
    }
  ]
}
```
