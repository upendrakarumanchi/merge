%dw 2.0
output application/json
---
// here input has array of object using the function"distinctBy" it can take the  arguments and evalute each object in array (val.oderId) and returns the unique elements in it 
distinctBy (payload, (val, valueid) -> val.oderId)
