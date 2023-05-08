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

 // here i can remove the 'Z1SDC' to use pluck to write the code and  use another pluck operation  to add the Z1SDC  to use write key value 

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
