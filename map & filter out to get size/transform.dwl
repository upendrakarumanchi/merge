
%dw 2.0
output application/json
var bookName =  "Ancient World"
---
sizeOf((payload map ((item, index) -> item.books filter ((filteritem, filterindex) -> filteritem.displayName contains bookName))) filter ($ != []))



//here i can call a variable  name as bookname so i want size of "Ancient World" value mod  
///ere i can map and filter the data here we have same name with mltiple roots enter those and in that given input "Ancient World" size is need filter out to get the output 