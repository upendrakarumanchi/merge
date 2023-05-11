%dw 2.0
import * from dw::core::Dates
output application/json
---
payload ++ (date: today() as Date {format: 'yyyy-MM-dd'} as String {format: 'dd-MM-yyyy'})

// given payload to  add the feild is date. so i can import the dw:core:dates and concatnet payload to add the feild date on that use today and change formate based on my requirment 

//output
/*{
"name":"Uppendra",
"id": "25",
"date":08-05-2023
}*/