%dw 2.0
import * from dw::core::Strings
output application/json
---
payload map (num:$.num last 3)
//printing last three numbers. we can do this one in so many ways, so given input can map to write the last 3 

