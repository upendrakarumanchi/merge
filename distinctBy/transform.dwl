%dw 2.0
output application/json
---
// here we can remove the duplicate values using distinctBy function 
distinctBy (payload, (val, valueind) -> val.oderId)

