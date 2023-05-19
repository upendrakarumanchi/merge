
%dw 2.0
output application/json
---
products : payload.products  update {
        case data at .data ->  (data ++ {
            manufacturer : payload.price.data.manufacturer,
            quantity : payload.price.data.quantity
        })
}
 
//in this updates data different data into single object and merge feilds 

 
/*
{

"products": {

"message": " product found",

"statuscode": 200,

"status": "SUCCESS",

"data": {

"manufacturer": "samsung",

"product": "galaxy",

"quantity": 2,

"model": "mobile",

"price": 20000

}

}

}
*/