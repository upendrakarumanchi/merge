%dw 2.0
output application/json  
---
{(payload map ((item, index) -> {
  (item.'type'): item.number
}))}

//requirment is to we have array of objects in those values need to formulate as a key valuues pairs and forms new object