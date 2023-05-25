%dw 2.0
output application/json
import * from dw::core::Objects
---
payload mapObject ((($$): $) if ($ != null)) ++
    "fieldsToNull": valueSet(payload mapObject (( key: $$ ) if(($ == null) or (isEmpty($)))))


    //remove eampty and null values in the give input and add those into create a seperate root in that  insert those eampty and null