%dw 2.0
output application/json
var source=
{
"List": {
"Id": "01234",
}
}
var destination=
{
"Id": [
{
"data": ""
}
]
}
---
Id:destination.Id map
{
data: source.List.Id
}


// here i can call the two variable is source and destination. ined to add data in destination data part so in my script use destination to map the source id value into destination


/* output
{
"Id": [
{
"data": "01234"
}
]
}
*/