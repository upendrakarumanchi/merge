%dw 2.0
output application/json
---
orderLines:orderLine:(flatten(payload."product-lineitems".*"product-lineitem"  map ((item, index) -> (1 to item.quantity) map(()->
    {
       "product-id": item."product-id",
       "paidPriceAmount": item."base-price"
    }
)))) map ((item, index) -> {"orderLineId":index+1} ++ item)

//here we can change roots to add feild orderlineid at given payload




//expected output:

// "orderLines": {

//      "orderLine": [

//       {

//        "orderLineId": 1,

//        "product-id": "1076613-52-L",

//        "paidPriceAmount": 39.99

//       },

//       {

//        "orderLineId": 2,

//        "product-id": "1076613-52-L",

//        "paidPriceAmount": 39.99

//       }

//      ]

//     }