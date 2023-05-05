%dw 2.0
import * from dw::util::Values
var source = {
  "List": {
    "Id": "01213123234"
  }
}
var destination = {
  "I231d": [
    {
      "data": ""
    }
  ]
}
output application/json  
---
//here i can import  the dynamic values call the payload in variable

destination update [ keysOf(destination)[0] as String , "data"] with source.List.Id

// so here i can update the data in destination idata location so, here write the  location i want updated use the update function in that (array use to keysof with location and  format with data  )and  requried sorce data location can also add 
   
  
