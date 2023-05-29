%dw 2.0
import mergeWith from dw::core::Objects
var ip1 = [ 
    {
"Name": "Alex",
"Surname": "Thomas"
}
]
var ip2 =
[{
"Address": "KyleMore Street USA",
"Country": "United Sates"

}]
output application/json
---
ip1 map (
   $ mergeWith ip2[$$]
)


// we have two var, merge the data in single array so, i can map the ip1 data to use menrgewith ip2 