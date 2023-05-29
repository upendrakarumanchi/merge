%dw 2.0
output application/json
---
payload flatMap ((item, index) ->item )

//cobine multiple arrays in to singlt array use faltmap to get the single array 