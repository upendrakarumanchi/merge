%dw 2.0
import * from dw::core::Arrays
output application/json
var names = ["upendra", "arun", "lakshman"]
//here we can use dw- core-arrays module to work with arrays and input as an array 
---
// call the varible and use indexof 
names indexOf("arun")
//returns the index of the matching value from the input array.the value not found return (-1)
