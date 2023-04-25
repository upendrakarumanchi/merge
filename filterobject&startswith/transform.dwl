%dw 2.0
output application/json
---
/*
this is the ouput i need 
{
  "host": "localhost",
  "connection": "live",
  "postman": "true"
}
  so using filterobject function it can itterates the key value pairs . what are the keys startwith (pc & tc) to remove to write the rest of key values.it can (--)  help to remove the specifies key values from an object 
*/
payload -- (payload filterObject ( ($$ as String startsWith  "pc") or ($$ as String startsWith  "tc")))
