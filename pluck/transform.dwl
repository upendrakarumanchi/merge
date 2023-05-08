%dw 2.0
output application/json
---
Acc: payload.ZCUSTWAR.IDOC - 'Z1SDC' pluck
{
AcNam: $.ZCUST,
Acnum: $.KUNR,
(payload.ZCUSTWAR pluck ((value, key, index) ->
{
identifier: value.Z1SDC.KUNR,
AcDes: value.Z1SDC.CNAM
}))
} 

//by using pluck operations to add  "z1wc" expressions with 'Z1SDC'

/*
{
  "Acc": [
    [
      {
        "identifier": "01015175",
        "AcDes": "CENTRAL",
        "AcNam": "W1",
        "AcNum": "01"
      },
      {
        "identifier": "01015175",
        "AcDes": "CENTRAL",
        "AcNam": "W2",
        "AcNum": "02"
      }
    ]
  ]
}*/
