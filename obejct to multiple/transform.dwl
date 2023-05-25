%dw 2.0
output application/json
---
{
    data: {
        schema : payload.data.schema,
        payload: payload.data.payload mapObject ((value, key, index) -> 
        if((key) endsWith('Old'))
        (old: [(key): value]) else {(key):value})
 
    }
}

// given input use mapobject function to what are the keys should be end with old those can be placed as a a key values of root old