%dw 2.0
output application/json
---

//here we can update the input data formates
payload map ((item, index) -> (
((item) update {
case upii at .date_f -> upii as Date {format: "dd/MM/yyyy"} as String {format: "yyyy-MM-dd"}
case upii at .date_ -> upii as Date {format: "dd-MM-yyyy"} as String {format: "yyyy-MM-dd"}
})
))