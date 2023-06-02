%dw 2.0
output application/json
---
payload groupBy ((item, index) -> item.message) pluck ((value, key, index) -> {
    id : value.id joinBy  ", ",
    message : key,
    table : value[0].table
})

//based on given input gruop the message in given object  and use pluck operation to join tha id values  to get my requirment.