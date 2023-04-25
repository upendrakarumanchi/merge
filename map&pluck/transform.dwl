%dw 2.0
output application/json
---
//
payload map ((item, index) -> 
item pluck $$ map ((item1, index) -> item1 ++ "=" ++ item[item1]) joinBy ","
)

