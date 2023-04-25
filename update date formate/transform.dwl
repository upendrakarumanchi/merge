%dw 2.0
output application/json
---
/*
 input is array of object so what i need is to chage the date formates("dd/MM/yyyy" to "yyyy-MM-dd")
*/

payload map ((item, index) -> (
//- by using map function we can map the feilds and update those date formate
((item) update {
case upii at.date_f -> upii as Date {format: "dd/MM/yyyy"} as String {format: "yyyy-MM-dd"}
case upii at .date_ -> upii as Date {format: "dd-MM-yyyy"} as String {format: "yyyy-MM-dd"}
})
))
