%dw 2.0
import * from dw::core::Strings
output application/json
---
{
    message: "/psapi/onDigit" ++ (payload.message splitBy  "/psapi" )[-1],

    message: (payload.message splitBy  "/" joinBy  "/onDigit/")[8 to -1],
    message: payload.message replace  "/psapi" with "/psapi/onDigit"
}  distinctBy ((value, key) ->key )



//expected output 

/*
{

"message": "/psapi/onDigit/productOffers?id=12345"

}*/
